<?php

namespace Http\Controllers;
namespace App\Http\Controllers;

use App\User;
use App\Roles;
use App\Category;
use App\SubCategory;
use App\City;
use App\Listing;
use App\Email;
use App\Page;

use Mail;

use App\Http\Requests;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

use Session;

class AdminController extends Controller {
	public function getDashboard() {
		$user = Auth::user();
		return view('admin.dashboard', ["user" => $user]);
	}

    public function getAdminAccount() {
        $user = Auth::user();
        return view('admin.account', ["user" => $user]);
    }
	
	public function getManagerDashboard() {
		$user = Auth::user();
		return view('manager.dashboard', ["user" => $user]);
	}

    public function getManagerAccount() {
        $user = Auth::user();
        return view('manager.account', ["user" => $user]);
    }
	
	public function postAdminUpdate(Request $request) {
		
		$user = Auth::user();

        // create the validation rules
        $rules = array(
            'name' => 'required', 'phone' => 'required', 'email' => 'required|email'
        );

        // do the validation ----------------------------------
        // validate against the inputs from our form
        $validator = Validator::make($request->all(), $rules);

        // check if the validator failed -----------------------
        if ($validator->fails()) {

            // get the error messages from the validator
            //$messages = $validator->messages();
            Session::flash('flash_message', 'There are some errors');
            // redirect our user back to the form with the errors from the validator
            return Redirect::route('admin-account')->withErrors($validator)->withInput();

        } else {

            //$password = $request['password'];
            //$password_confirm = $request['password_confirm'];
            $user->name = $request['name'];
            $user->email = $request['email'];
            $user->phone = $request['phone'];
//		if ($password != "" and $password == $password_confirm) {
//			$user->password   = bcrypt($password);
//		}

            $user->save();
            Session::flash('flash_message', 'Account Updated');
            return redirect()->route('admin-account');

        }
		
	}
	public function postAdminUpdatePassword(Request $request) {
		$user = Auth::user();

        // create the validation rules
        $rules = array(
            'password' => 'required', 'password_confirmation' => 'required|same:password'
        );

        // do the validation ----------------------------------
        // validate against the inputs from our form
        $validator = Validator::make($request->all(), $rules);

        // check if the validator failed -----------------------
        if ($validator->fails()) {

            // get the error messages from the validator
            //$messages = $validator->messages();
            Session::flash('flash_message', 'There are some errors');
            // redirect our user back to the form with the errors from the validator
            return Redirect::route('admin-account')->withErrors($validator)->withInput();

        } else {
            $password = $request['password'];
            $password_confirmation = $request['password_confirmation'];

            if ($password != "" and $password == $password_confirmation) {
                $user->password = bcrypt($password);
            }

            $user->save();
            Session::flash('flash_message', 'Password updated');
            return redirect()->route('admin-account');
        }
		
	}
	
	public function getAdminUsers() {
		$user    = Auth::user();
		
		$user_type = config('variables.user_type');
		$user_status = config('variables.user_status');
		
		$users = User::orderBy('id', 'desc')->paginate(10);
		return view('admin.users', ['user' => $user, 'users' => $users, 'user_type' => $user_type, 'user_status' => $user_status]);
		
	}
	public function getAdminUserEdit($id) {
		
		$user    = Auth::user();
		
		$user_type = config('variables.user_type');
		$user_status = config('variables.user_status');
		
		$users = User::find($id);
		return view('admin.users-edit', ['user' => $user, 'users' => $users, 'user_type' => $user_type, 'user_status' => $user_status]);
		
		
	}
	public function postAdminUserEdit(Request $request) {
		$user    = Auth::user();
		
		$id = $request['id'];
		$users = User::find($id);
		$users->name = $request['name'];
		$users->email = $request['email'];
		$users->phone = $request['phone'];
		$users->user_type = $request['user_type'];
		$users->status = $request['user_status'];
		
		$users->save();
		
		Session::flash('flash_message', 'User updated');
		return redirect()->route('admin-users');
		
	}
	
	public function getAdminUserDelete($id) {
		
	}
	
	
	public function getAdminAds() {
    $user    = Auth::user();

    $subcategory = SubCategory::where('active', 1)->orderBy('seq')->pluck('sub_category', 'id');
    $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

    $ad_status = config('variables.ad_status');

    $ads = Listing::orderBy('id', 'desc')->paginate(10);
    return view('admin.ads', ['user' => $user, 'ads' => $ads, 'category' => $subcategory, 'city' => $city, 'ad_status' => $ad_status]);

    }

    public function getAdminPendingAds() {
        $user    = Auth::user();

        $subcategory = SubCategory::where('active', 1)->orderBy('seq')->pluck('sub_category', 'id');
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $ad_status = config('variables.ad_status');

        $ads = Listing::where('status', 0)->orderBy('id', 'desc')->paginate(10);
        return view('admin.ads', ['user' => $user, 'ads' => $ads, 'category' => $subcategory, 'city' => $city, 'ad_status' => $ad_status]);

    }

	public function getAdminAdEdit($id) {
		$user    = Auth::user();
		
		//$subcategory = SubCategory::where('active', 1)->orderBy('seq')->pluck('sub_category', 'id');
        $subcategory2 = SubCategory::where('active', 1)->orderBy('id')->select('id','data1','data2','data3','data4','data5','data6','data7','data8')->get();

		$city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');
		
		$category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
		
		$subcategory = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();
		
		$items = [];
		foreach($subcategory as $row) {
			$cat = $row->category_id;
			$catname = $category[$cat];
			$items["$catname"][$row->id] = $row->sub_category;
		}
		$subcategory = $items;
		
		//$user_type = config('variables.user_type');
		$ad_status = config('variables.ad_status');
		
		$listing = Listing::find($id);

        $photos = $listing->photo()->get();
		
		return view('admin.ads-edit', ['user' => $user, 'listing' => $listing, "photos" => $photos, 'category' => $subcategory, "subcat" => $subcategory2, 'city' => $city, 'ad_status' => $ad_status]);
		
	}
	public function postAdminAdEdit(Request $request) {
		$user    = Auth::user();

        // create the validation rules ------------------------
        $rules = array('category' => 'required', 'ad_type' => 'required', 'ad_title' => 'required', 'ad_description' => 'required', 'price' => 'required|numeric', 'posted_by' => 'required', 'seller_area' => 'required'

        );

        // do the validation ----------------------------------
        // validate against the inputs from our form
        $validator = Validator::make($request->all(), $rules);

        // check if the validator failed -----------------------
        if ($validator->fails()) {

            // get the error messages from the validator
            //$messages = $validator->messages();
            Session::flash('flash_message', 'There are some errors');
            // redirect our user back to the form with the errors from the validator
            return Redirect::route('admin-ads')->withErrors($validator)->withInput();

        } else {

            $id = $request["id"];

            $listing = Listing::find($id);

            $listing->subcategory_id = $request["category"];
            $listing->ad_type = $request["ad_type"];
            $listing->title = $request["ad_title"];
            $listing->description = $request["ad_description"];
            $listing->price = $request["price"];
            $listing->negotiable = (isset($request["negotiable"]) ? 1 : 0);
            $listing->posted_by = $request["posted_by"];
            $listing->city_id = $request["seller_area"];
            $listing->phone = $request["phone"];
            $listing->active = (isset($request["active"]) ? 1 : 0);
            $listing->status = $request["status"];

            $listing->data1 = (isset($request["data1"]) ? $request["data1"] : "");
            $listing->data2 = (isset($request["data2"]) ? $request["data2"] : "");
            $listing->data3 = (isset($request["data3"]) ? $request["data3"] : "");
            $listing->data4 = (isset($request["data4"]) ? $request["data4"] : "");
            $listing->data5 = (isset($request["data5"]) ? $request["data5"] : "");
            $listing->data6 = (isset($request["data6"]) ? $request["data6"] : "");
            $listing->data7 = (isset($request["data7"]) ? $request["data7"] : "");
            $listing->data8 = (isset($request["data8"]) ? $request["data8"] : "");

            $listing->save();

            Session::flash('flash_message', 'Ad successfully updated!');
        }
		
		//return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
		return redirect()->route('admin-ads');
	}

    public function postAdminAdApprove(Request $request)
    {
        $user = Auth::user();
        $id = $request["id"];
        $listing = Listing::find($id);
        $listing->status = 1;
        $listing->save();

        $user_id = $listing->user_id;
        $user = User::find($user_id);
        // get email
        $email_str = 'You AD has been approved. ';
        $email = Email::where('slug', 'ad-approved')->first();

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

        Session::flash('flash_message', 'Ad successfully APPROVED');
        //return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
        return redirect()->route('admin-ads');
    }

	public function getAdminAdDelete($id) {
		
		
		
		
		
		
	}
	
	public function getAdminCategories() {
		$user    = Auth::user();
		
		$category = Category::orderBy('id', 'desc')->paginate(10);
		
		return view('admin.categories', ['user' => $user, 'category' => $category]);
		
	}
	
	public function getAdminCategoryEdit($id) {
		$user    = Auth::user();
		if ($id == 0) {
            $category = new Category;
        } else {
            $category = Category::find($id);
        }
		return view('admin.category-edit', ['user' => $user, 'category' => $category]);
	}
	public function postAdminCategoryEdit(Request $request) {
		$user    = Auth::user();
		
		$id = $request["id"];
		if ($id == 0) {
            $category = new Category;

            $category->category = $request["category"];
            $category->description = $request["description"];
            $category->seq = $request["seq"];

            $category->active = (isset($request["active"]) ? 1 : 0);

            $category->save();
        } else {
            $category = Category::find($id);

            $category->category = $request["category"];
            $category->description = $request["description"];
            $category->seq = $request["seq"];

            $category->active = (isset($request["active"]) ? 1 : 0);

            $category->save();
        }
		
		Session::flash('flash_message', 'Category successfully updated!');
		
		//return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
		return redirect()->route('admin-category');
		
		
	}
	public function getAdminCategoryDelete($id) {}
	
	
	
	public function getAdminSubCategories() {
		$user    = Auth::user();


		
		$subcategory = SubCategory::orderBy('id', 'desc')->paginate(30);
		
		return view('admin.subcategories', ['user' => $user, 'subcategory' => $subcategory]);
	}
	
	public function getAdminSubCategoryEdit($id) {
		
		$user    = Auth::user();
		if ($id == 0) {
            $subcategory = new SubCategory;
        } else {
            $subcategory = SubCategory::find($id);

        }
        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
		return view('admin.subcategory-edit', ['user' => $user, 'category' => $category, 'subcategory' => $subcategory]);
		
	}
	public function postAdminSubCategoryEdit(Request $request) {
		$user    = Auth::user();
		
		$id = $request["id"];
		if ($id == 0) {
            $subcategory = new SubCategory;

            $subcategory->sub_category = $request["sub_category"];
            $subcategory->description = $request["description"];
            $subcategory->seq = $request["seq"];
            $subcategory->category_id = $request["category"];
            $subcategory->active = (isset($request["active"]) ? 1 : 0);
            $subcategory->data1 = $request["data1"];
            $subcategory->data2 = $request["data2"];
            $subcategory->data3 = $request["data3"];
            $subcategory->data4 = $request["data4"];
            $subcategory->data5 = $request["data5"];
            $subcategory->data6 = $request["data6"];
            $subcategory->data7 = $request["data7"];
            $subcategory->data8 = $request["data8"];
            $subcategory->details1 = $request["details1"];
            $subcategory->details2 = $request["details2"];
            $subcategory->details3 = $request["details3"];
            $subcategory->details4 = $request["details4"];
            $subcategory->details5 = $request["details5"];
            $subcategory->details6 = $request["details6"];
            $subcategory->details7 = $request["details7"];
            $subcategory->details8 = $request["details8"];

            $subcategory->save();
        } else {
            $subcategory = SubCategory::find($id);

            $subcategory->sub_category = $request["sub_category"];
            $subcategory->description = $request["description"];
            $subcategory->seq = $request["seq"];
            $subcategory->category_id = $request["category"];
            $subcategory->active = (isset($request["active"]) ? 1 : 0);
            $subcategory->data1 = $request["data1"];
            $subcategory->data2 = $request["data2"];
            $subcategory->data3 = $request["data3"];
            $subcategory->data4 = $request["data4"];
            $subcategory->data5 = $request["data5"];
            $subcategory->data6 = $request["data6"];
            $subcategory->data7 = $request["data7"];
            $subcategory->data8 = $request["data8"];
            $subcategory->details1 = $request["details1"];
            $subcategory->details2 = $request["details2"];
            $subcategory->details3 = $request["details3"];
            $subcategory->details4 = $request["details4"];
            $subcategory->details5 = $request["details5"];
            $subcategory->details6 = $request["details6"];
            $subcategory->details7 = $request["details7"];
            $subcategory->details8 = $request["details8"];

            $subcategory->save();
        }
		Session::flash('flash_message', 'Sub Category successfully updated!');
		
		//return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
		return redirect()->route('admin-subcategory');
		
		
		
	}
	public function getAdminSubCategoryDelete($id) {}
	
	
	
	public function getAdminCities() {
		$user    = Auth::user();
		
		$city = City::orderBy('id', 'desc')->paginate(5);
		
		return view('admin.cities', ['user' => $user, 'city' => $city]);
	}
	
	public function getAdminCityEdit($id) {
		$user    = Auth::user();

        if ($id==0) {
            $city = new City;

        } else {

            $city = City::find($id);
        }
		return view('admin.city-edit', ['user' => $user, 'city' => $city]);
	}
	public function postAdminCityEdit(Request $request) {
		$user    = Auth::user();
		
		$id = $request["id"];

        if ($id ==0) {
            $city = new City;
            $city->city = $request["city"];
            $city->description = $request["description"];
            $city->seq = $request["seq"];

            $city->active = (isset($request["active"]) ? 1 : 0);

            $city->save();
        } else {

            $city = City::find($id);
            $city->city = $request["city"];
            $city->description = $request["description"];
            $city->seq = $request["seq"];

            $city->active = (isset($request["active"]) ? 1 : 0);

            $city->save();
        }

		
		Session::flash('flash_message', 'City successfully updated!');
		
		//return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
		return redirect()->route('admin-city');
		
	}
	public function getAdminCityDelete($id) {}

    public function getEmails() {
        $user = Auth::user();

        $emails = Email::orderBy('id')->paginate(10);

        return view('admin.emails', ['user' => $user, 'emails' => $emails]);
    }

    public function getEmail($id) {
        $user = Auth::user();

        $email = Email::find($id);

        return view('admin.email', ['user' => $user, 'email' => $email]);
    }

    public function postEmail(Request $request) {
        $user = Auth::user();
        $id = $request["id"];
        $rules = array('slug' => 'required', 'title' => 'required', 'message' => 'required',

        );

        // do the validation ----------------------------------
        // validate against the inputs from our form
        $validator = Validator::make($request->all(), $rules);

        // check if the validator failed -----------------------
        if ($validator->fails()) {

            // get the error messages from the validator
            //$messages = $validator->messages();
            Session::flash('flash_message', 'There are some errors');
            // redirect our user back to the form with the errors from the validator
            return Redirect::route('admin.updemail', $id)->withErrors($validator)->withInput();

        } else {

            $email = Email::find($id);

            $email->title = $request['title'];
            $email->slug = $request['slug'];
            $email->message = $request['message'];

            $email->save();

            Session::flash('flash_message', 'Email successfully updated!');

            //return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
            return redirect()->route('admin.updemail', $id);
        }
    }

    public function getPages()
    {
        $user = Auth::user();

        $pages = Page::orderBy('id')->paginate(10);

        return view('admin.pages', ['user' => $user, 'pages' => $pages]);
    }

    public function getPage($id)
    {
        $user = Auth::user();

        if ($id == 0) {
            $page = new Page();
        } else {
            $page = Page::find($id);
        }

        return view('admin.page', ['user' => $user, 'page' => $page]);
    }

    public function postPage(Request $request)
    {
        $user = Auth::user();
        $id = $request["id"];

        $rules = array('slug' => 'required', 'title' => 'required', 'description' => 'required',);

        // do the validation ----------------------------------
        // validate against the inputs from our form
        $validator = Validator::make($request->all(), $rules);

        // check if the validator failed -----------------------
        if ($validator->fails()) {

            // get the error messages from the validator
            //$messages = $validator->messages();

            // redirect our user back to the form with the errors from the validator
            return Redirect::route('admin.page', $id)->withErrors($validator)->withInput();

        } else {

            if ($id == 0) {
                $page = new Page();
                $page->title = $request['title'];
                $page->slug = $request['slug'];
                $page->meta_description = $request['meta_description'];
                $page->description = $request['description'];
                $page->active = (isset($request['active']) ? 1 : 0);

                $page->save();
            } else {

                $page = Page::find($id);

                $page->title = $request['title'];
                $page->slug = $request['slug'];
                $page->meta_description = $request['meta_description'];
                $page->description = $request['description'];
                $page->active = (isset($request['active']) ? 1 : 0);

                $page->save();
            }

            Session::flash('flash_message', 'Email successfully updated!');

            //return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
            return redirect()->route('admin.page', $id);
        }
    }
	
}
