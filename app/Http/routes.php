<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Route::get('/', function () {
//     return view('home');
// });

//Route::auth();


Route::get('', function () {
    //return redirect()->route('signin');
    //return redirect()->route('home');
    return redirect(route('home'));
})->name('main');

// Route::get('/home', 'HomeController@index');
/*
    Route::get('/', function () {
        return redirect()->route('home');
    })->name('main');

        Route::get('/home', [
        'uses' => 'HomeController@index',
        'as' => 'home'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);
*/
Route::group([], function () {

    Route::get('/home', [
      'uses' => 'UserController@getHome',
      'as' => 'home'
      //'middleware' => 'roles',
      //'roles' => ['User']
    ]);
	
    Route::get('/search', [
            'uses' => 'UserController@getSearch',
            'as' => 'search'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);

    Route::post('/search', [
            'uses' => 'UserController@postSearch',
            'as' => 'search'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);

    Route::post('/search-category', [
        'uses' => 'UserController@postSearchCategory',
        'as' => 'search-category'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);

    Route::post('/search-subcategory', [
        'uses' => 'UserController@postSearchSubCategory',
        'as' => 'search-subcategory'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);

    Route::get('/category/{id}-{title?}', [
        'uses' => 'UserController@getCategory',
        'as' => 'category'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);
	
    Route::get('/subcategory/{id}-{title?}', [
            'uses' => 'UserController@getSubCategory',
            'as' => 'subcategory'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);
	
    Route::get('/ad/{id}-{title}', [
      'uses' => 'UserController@getAd',
      'as' => 'ad'
      //'middleware' => 'roles',
      //'roles' => ['User']
    ]);

    Route::post('/send-msg', [
        'uses' => 'UserController@postSendMessage',
        'as' => 'send-msg',
        //'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::post('/comment-reply', [
        'uses' => 'UserController@postCommentReply',
        'as' => 'comment-reply',
        //'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::post('/comment-offer', [
        'uses' => 'UserController@postCommentOffer',
        'as' => 'comment-offer',
        //'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::post('/report-ad', [
        'uses' => 'UserController@postReportAd',
        'as' => 'report-ad',
        //'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::post('/report-comment', [
        'uses' => 'UserController@postReportComment',
        'as' => 'report-comment',
        //'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/delete-comment/{id}', [
        'uses' => 'UserController@getDeleteComment',
        'as' => 'delete-comment',
        //'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/dashboard', [
        'uses' => 'UserController@getDashboard',
        'as' => 'dashboard',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/account', [
        'uses' => 'UserController@getAccount',
        'as' => 'account',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);
	
    Route::post('/update-account', [
        'uses' => 'UserController@postUpdateAccount',
        'as' => 'update-account',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::post('/update-password', [
        'uses' => 'UserController@postUpdatePass',
        'as' => 'update-password',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/post-ads', [
        'uses' => 'UserController@getPostAds',
        'as' => 'post-ads',
        'middleware' => 'roles',
        'roles' => ['Admin', 'Manager', 'User']
    ]);

    Route::post('/post-ads', [
        'uses' => 'UserController@postPostAds',
        'as' => 'post-ads',
        'middleware' => 'roles',
        'roles' => ['Admin', 'Manager', 'User']
    ]);

    Route::get('/user-ads', [
        'uses' => 'UserController@getUserAds',
        'as' => 'user-ad',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);
    Route::get('/favorite-ads', [
            'uses' => 'UserController@getFavoriteAds',
            'as' => 'favorite-ad',
            'middleware' => 'roles',
            'roles' => ['User']
    ]);
    Route::get('/favorite-delete/{id}', [
        'uses' => 'UserController@getFavoriteDelete',
        'as' => 'favorite-delete',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);
    Route::get('/archive-ads', [
            'uses' => 'UserController@getArchiveAds',
            'as' => 'archive-ad',
            'middleware' => 'roles',
            'roles' => ['User']
    ]);
    Route::get('/pending-ads', [
            'uses' => 'UserController@getPendingAds',
            'as' => 'pending-ad',
            'middleware' => 'roles',
            'roles' => ['User']
    ]);

    Route::get('/edit-ad/{id}', [
        'uses' => 'UserController@getEditAds',
        'as' => 'edit-ad',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);
	
    Route::post('/update-ad', [
        'uses' => 'UserController@postEditAds',
        'as' => 'update-ad',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/delete-ad/{id}', [
        'uses' => 'UserController@getDeleteAds',
        'as' => 'delete-ad',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/archive/{id?}', [
        'uses' => 'UserController@getArchiveAd',
        'as' => 'archive',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/unarchive/{id?}', [
        'uses' => 'UserController@getUnArchiveAd',
        'as' => 'unarchive',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/messages', [
        'uses' => 'UserController@getMessages',
        'as' => 'messages',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);
    Route::get('/message/{list_id}/{id1?}/{id2?}', [
        'uses' => 'UserController@getMessage',
        'as' => 'message',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);
    Route::post('/message-reply', [
        'uses' => 'UserController@postMessageReply',
        'as' => 'message-reply',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::get('/notifications', [
        'uses' => 'UserController@getNotifications',
        'as' => 'notifications',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);


    Route::get('/setfavorite', [
        'uses' => 'UserController@setFavorite',
        'as' => 'setfavorite'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);
    Route::get('/unsetfavorite', [
        'uses' => 'UserController@unsetFavorite',
        'as' => 'unsetfavorite'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);

    Route::get('/categories-list/{id?}', [
        'uses' => 'UserController@getCategoryList',
        'as' => 'categories-list'
        //'middleware' => 'roles',
        //'roles' => ['User']
    ]);

    /* General */
    Route::get('/signup', [
        'uses' => 'AuthController@getSignUpPage',
        'as' => 'signup'
    ]);

    Route::post('/signup', [
        'uses' => 'AuthController@postSignUp',
        'as' => 'signup'
    ]);

    Route::get('/confirm/{token?}', [
        'uses' => 'AuthController@getConfirmPage',
        'as' => 'confirm'
    ]);

    Route::get('/signin', [
        'uses' => 'AuthController@getSignInPage',
        'as' => 'signin'
    ]);

    Route::post('/signin', [
        'uses' => 'AuthController@postSignIn',
        'as' => 'signin'
    ]);

    Route::get('/forgot/{token?}', [
        'uses' => 'AuthController@getForgotPage',
        'as' => 'forgot'
    ]);

    Route::post('/forgot', [
        'uses' => 'AuthController@postSendResetLink',
        'as' => 'forgot'
    ]);

    Route::post('/password-reset', [
        'uses' => 'AuthController@postPasswordReset',
        'as' => 'password-reset'
    ]);

    Route::get('/logout', [
        'uses' => 'AuthController@getLogout',
        'as' => 'logout'
    ]);


    Route::get('/post-ads', [
        'uses' => 'UserController@getPostAds',
        'as' => 'post-ads',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);

    Route::post('/post-ads', [
        'uses' => 'UserController@postPostAds',
        'as' => 'post-ads',
        'middleware' => 'roles',
        'roles' => ['User']
    ]);
	
	Route::get('/manager', [
			'uses' => 'AdminController@getManagerDashboard',
			'as' => 'manager-dashboard',
			'middleware' => 'roles',
			'roles' => ['Manager']
	]);
	
	Route::get('/admin', [
			'uses' => 'AdminController@getDashboard',
			'as' => 'admin-dashboard',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);

    Route::get('/admin-account', [
        'uses' => 'AdminController@getAdminAccount',
        'as' => 'admin-account',
        'middleware' => 'roles',
        'roles' => ['Admin', 'Manager']
    ]);
	
	Route::post('/admin-update', [
			'uses' => 'AdminController@postAdminUpdate',
			'as' => 'admin-update',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
	
	Route::post('/admin-update-password', [
			'uses' => 'AdminController@postAdminUpdatePassword',
			'as' => 'admin-update-password',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
	
	Route::get('/admin-users', [
			'uses' => 'AdminController@getAdminUsers',
			'as' => 'admin-users',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
	Route::get('/admin-user-edit/{id}', [
			'uses' => 'AdminController@getAdminUserEdit',
			'as' => 'admin-user-edit',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
	Route::post('/admin-user-edit', [
			'uses' => 'AdminController@postAdminUserEdit',
			'as' => 'admin-user-update',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
	Route::get('/admin-user-delete/{id}', [
			'uses' => 'AdminController@getAdminUserDelete',
			'as' => 'admin-user-delete',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
	
	
	Route::get('/admin-ads', [
			'uses' => 'AdminController@getAdminAds',
			'as' => 'admin-ads',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
	Route::get('/admin-ad-edit/{id}', [
			'uses' => 'AdminController@getAdminAdEdit',
			'as' => 'admin-ad-edit',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
	Route::post('/admin-ad-edit', [
			'uses' => 'AdminController@postAdminAdEdit',
			'as' => 'admin-ad-update',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);
    Route::post('/admin-ad-approve', [
        'uses' => 'AdminController@postAdminAdApprove',
        'as' => 'admin-ad-approve',
        'middleware' => 'roles',
        'roles' => ['Admin', 'Manager']
    ]);
	Route::get('/admin-ad-delete/{id}', [
			'uses' => 'AdminController@getAdminAdDelete',
			'as' => 'admin-ad-delete',
			'middleware' => 'roles',
			'roles' => ['Admin', 'Manager']
	]);

    Route::get('/admin-pending-ads', [
        'uses' => 'AdminController@getAdminPendingAds',
        'as' => 'admin-pending-ads',
        'middleware' => 'roles',
        'roles' => ['Admin', 'Manager']
    ]);
	
	Route::get('/admin-category', [
			'uses' => 'AdminController@getAdminCategories',
			'as' => 'admin-category',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::get('/admin-category-edit/{id}', [
			'uses' => 'AdminController@getAdminCategoryEdit',
			'as' => 'admin-category-edit',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::post('/admin-category-edit', [
			'uses' => 'AdminController@postAdminCategoryEdit',
			'as' => 'admin-category-update',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::get('/admin-category-delete/{id}', [
			'uses' => 'AdminController@getAdminCategoryDelete',
			'as' => 'admin-category-delete',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	
	Route::get('/admin-subcategory', [
			'uses' => 'AdminController@getAdminSubCategories',
			'as' => 'admin-subcategory',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::get('/admin-subcategory-edit/{id}', [
			'uses' => 'AdminController@getAdminSubCategoryEdit',
			'as' => 'admin-subcategory-edit',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::post('/admin-subcategory-edit', [
			'uses' => 'AdminController@postAdminSubCategoryEdit',
			'as' => 'admin-subcategory-update',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::get('/admin-subcategory-delete/{id}', [
			'uses' => 'AdminController@getAdminSubCategoryDelete',
			'as' => 'admin-subcategory-delete',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::get('/admin-city', [
			'uses' => 'AdminController@getAdminCities',
			'as' => 'admin-city',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::get('/admin-city-edit/{id}', [
			'uses' => 'AdminController@getAdminCityEdit',
			'as' => 'admin-city-edit',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::post('/admin-city-edit', [
			'uses' => 'AdminController@postAdminCityEdit',
			'as' => 'admin-city-update',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);
	
	Route::get('/admin-city-delete/{id}', [
			'uses' => 'AdminController@getAdminCityDelete',
			'as' => 'admin-city-delete',
			'middleware' => 'roles',
			'roles' => ['Admin']
	]);

    Route::get('/admin-emails', [
        'uses' => 'AdminController@getEmails',
        'as' => 'admin.emails',
        'middleware' => 'roles',
        'roles' => ['Admin']
    ]);

    Route::get('/admin-email/{id}', [
        'uses' => 'AdminController@getEmail',
        'as' => 'admin.updemail',
        'middleware' => 'roles',
        'roles' => ['Admin']
    ]);

    Route::post('/admin-email', [
        'uses' => 'AdminController@postEmail',
        'as' => 'admin.updemailpost',
        'middleware' => 'roles',
        'roles' => ['Admin']
    ]);

    Route::get('/admin-pages', [
        'uses' => 'AdminController@getPages',
        'as' => 'admin.pages',
        'middleware' => 'roles',
        'roles' => ['Admin']
    ]);

    Route::get('/admin-page/{id}', [
        'uses' => 'AdminController@getPage',
        'as' => 'admin.page',
        'middleware' => 'roles',
        'roles' => ['Admin']
    ]);

    Route::post('/admin-page', [
        'uses' => 'AdminController@postPage',
        'as' => 'admin.updatepage',
        'middleware' => 'roles',
        'roles' => ['Admin']
    ]);
    Route::get('/page/{slug}', [
        'uses' => 'UserController@getPage',
        'as' => 'page'
    ]);


    /* Common */
    Route::get('/error', [
        'uses' => 'AuthController@getErrorPage',
        'as' => 'error'
    ]);

    Route::get('/test', [
        'uses' => 'AuthController@getTestPage',
        'as' => 'error'
    ]);

    //Route::get ( '/redirect/{service}', 'SocialAuthController@redirect' );
    //Route::get ( '/callback/{service}', 'SocialAuthController@callback' );

    Route::get('auth/{provider}', 'Auth\AuthController@redirectToProvider');
    Route::get('auth/{provider}/callback', 'Auth\AuthController@handleProviderCallback');


});