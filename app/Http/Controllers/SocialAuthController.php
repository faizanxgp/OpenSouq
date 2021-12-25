<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Socialite;
use Redirect;

class SocialAuthController extends Controller
{
//    public function redirect($service)
//    {
//        return Socialite::driver($service)->redirect();
//    }
//
//    public function callback($service)
//    {
//        $user = Socialite::with($service)->user();
//        return view('temp')->withDetails($user)->withService($service);
//    }
}