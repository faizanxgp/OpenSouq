<?php

namespace App\Http\Controllers;

use App\User;
use App\Role;
use App\Listing;
use App\Email;

use Mail;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

//use net\authorize\api\contract\v1 as AnetAPI;
//use net\authorize\api\controller as AnetController;
use Session;

class AuthController extends Controller {
	public function getSignUpPage() {
		
		// echo config('variables.env2');
		$sources = config('variables.sources');
		$countries = config('variables.countries');
		return view('auth.signup', ['sources' => $sources, 'countries' => $countries]);
	}
	
	public function postSignUp(Request $request) {
		// create the validation rules ------------------------
		$rules = array(
		    'name' => 'required', 'phone' => 'required', 'email' => 'required|email|unique:users',
            'password' => 'required', 'password_confirmation' => 'required|same:password', 'confirm' => 'required'

		);
		
		// do the validation ----------------------------------
		// validate against the inputs from our form
		$validator = Validator::make($request->all(), $rules);
		//dd($validator);
		
		// check if the validator failed -----------------------
		if ($validator->fails()) {
			
			// get the error messages from the validator
			//$messages = $validator->messages();
            Session::flash('flash_message', 'There are some errors');
			// redirect our user back to the form with the errors from the validator
			return Redirect::to('signup')->withErrors($validator)->withInput();
			
		} else {

			$name = $request['name'];
			$phone = $request['phone'];
			$email = $request['email'];
			$password = bcrypt($request['password']);

            $confirmation_code = str_random(30);
			
			$user = new User();
			$user->user_type = $request['user_type'];
			$user->name = $name;
			$user->phone = $phone;
			$user->phone_show = (isset($request['phone_show']) ? 1 : 0);
			$user->email = $email;
			$user->password = $password;
            $user->remember_token = $confirmation_code;

            $user->status = 1; // all users are approved

			$user->save();
			
			// add role
			$user->roles()->attach(Role::where('name', 'User')->first());
			
			// login user
			// Auth::login($user);

            // get email

            //$token_str = '<a href="http://sooqalibaba.com/confirm/' . $confirmation_code . '?email=' . $email . '">Click here to verify</a> or paste it in your browser url: http://sooqalibaba.com/confirm/' . $confirmation_code . '?email=' . $email ;

            $token_str = "";

            // get email

            $email_str = 'Welcome to SooqAliBaba <br />' . $token_str;
            $email = Email::where('slug', 'signup')->first();

            $find = array('/%user_name%/', '/%user_message%/');
            $replace = array($user->name, $email_str);
            $message = $email->message;
            $message = preg_replace($find, $replace, $message);
            // html codes and line breaks
            $emessage = htmlspecialchars_decode(nl2br($message));

            Mail::send('emails.basic', ['title' => $email->title, 'content' => $emessage], function ($m) use ($user, $email) {
                $m->from('admin@sooqalibaba.com', 'SooqAliBaba');

                $m->to($user->email, $user->name)->cc('monitor@sooqalibaba.com')->subject($email->title);
            });


            Session::flash('flash_message', 'Plesae confirm your email');
			return redirect()->route('home');
			
		}
	}
	
	public function getSignInPage() {
		return view('auth.signin');
	}
	
	public function postSignIn(Request $request) {
		
		$remember = isset($request['remember']) ? 1 : 0;
		if (Auth::attempt(['email' => $request['email'], 'password' => $request['password']], $remember)) {
			
			$user = Auth::user();
            $status = $user->status;
            if ($status == 1) {
                $roles = $user->roles->first();
                $role_id = $roles->id;

                switch ($role_id) {
                    case '3':
                        return redirect()->route('admin-dashboard');
                        break;
                    case '2':
                        return redirect()->route('manager-dashboard');
                        break;
                    case '1':
                        return redirect()->route('home');
                        break;
                        otherwise:
                        return redirect()->route('signin');
                }
            }
		}
		Session::flash('flash_message', 'Invalid Email or Password');
		return redirect()->back()->withInput();
	}

    public function getConfirmPage(Request $request, $token = null) {

        $email = $request->input('email');

        // show page
        if (is_null($token)) {
            return redirect()->route('home');
        } else {
            $user = User::where('email', $email)->first();

            if ($user) {
                if ($user->remember_token == $token) {
                    $user->status = 1; // approved
                    $user->save();
                    Session::flash('flash_message', 'Your email has been verified, please proceed');
                    return redirect()->route('home');

                }
            }
            return redirect()->route('home');
        }
    }

    public function getForgotPage(Request $request, $token = null) {

        $email = $request->input('email');

        // show page
        if (is_null($token)) {
            return view('auth.forgot');
        } else {

            return view('auth.forgot-update', ['token' => $token, 'email' => $email]);
        }

    }

    public function postSendResetLink(Request $request) {
        // send password reset email
        $email = $request["email"];

        $user = User::where('email', $email)->first();

        if ($user) {

            // generate key
            $token = str_random(64);

            $users = \DB::table('password_resets')->where('email', $email)->get();

            if (count($users) > 0) {
                \DB::table('password_resets')->where('email', $email)->delete();
            }

            \DB::table('password_resets')->insert(['email' => $email, 'token' => $token]);

            $token_str = '<a href="http://localhost/forgot/' . $token . '?email=' . $email . '">Click here to verify</a> or paste it in your browser url: http://localhost/forgot/' . $token . '?email=' . $email ;

            // get email
            $email = Email::where('slug', 'forgot-password')->first();

            $find = array('/%user_name%/', '/%user_message%/');
            $replace = array($user->first_name, $token_str);
            $message = $email->message;
            $message = preg_replace($find, $replace, $message);
            // html codes and line breaks
            $emessage = htmlspecialchars_decode(nl2br($message));

            Mail::send('emails.basic', ['title' => $email->title, 'content' => $emessage], function ($m) use ($user, $email) {
                $m->from('admin@sooqalibaba.com', 'Saudi Souq');
                $m->to($user->email, $user->first_name)->cc('monitor@sooqalibaba.com')->subject($email->title);
            });
        } else {

        }
        Session::flash('flash_message', 'Please check your Email.');
        return redirect()->back()->withInput();
    }

    public function postPasswordReset(Request $request) {
        // update password

        $credentials = $request->only('email', 'password', 'password_confirmation', 'token');

        $email = $credentials['email'];
        $password = $credentials['password'];
        $password_confirmation = $credentials['password_confirmation'];
        $token = $credentials['token'];

        if ($password == $password_confirmation) {
            $users = \DB::table('password_resets')->where('email', $email)->first();

            if ($users) {
                if ($users->token == $token) {
                    User::where('email', $email)->update(['password' => bcrypt($password)]);
                    Session::flash('flash_message', 'Password updated.');
                }
            }
        } else {
            Session::flash('flash_message', 'Could not update, please contact administrator.');
        }
        return redirect()->route('signin');
        /*
        $broker = $this->getBroker();

        $response = \Password::broker($broker)->reset($credentials, function ($user, $password) {
            $this->resetPassword($user, $password);
        }); */

    }
	
	public function getLogout() {
		Auth::logout();
		return redirect()->route('main');
	}
	
	public function getErrorPage() {
		return view('errors.403');
	}
	
	public function getTestPage() {
//		$controller = new TransController;
//		$controller->getTrans();
        $abc = "AA, 3, 5, 10, 13, 7, 6";
        $new_array = array();
        foreach(explode(',',$abc) as $key=>$val){
            $new_array[trim($val)] = trim($val);
        }
        var_dump($new_array);
        return $new_array;

	}


	
}