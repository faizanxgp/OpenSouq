<?php

namespace Http\Controllers;
namespace App\Http\Controllers;

use App\Favorite;
use App\Notification;
use App\User;
use App\Roles;
use App\Category;
use App\SubCategory;
use App\City;
use App\Listing;
use App\Photo;
use App\Message;
use App\Comment;
use App\Page;
use App\CommentReport;
use App\ListingReport;

use Image; // for resize

use App\Http\Requests;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

use Session;

class UserController extends Controller
{
    public function getHome()
    {
        $user = Auth::user();

        // multi-level box
        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        $old = $subcategorylist[0]->category_id;
        $t = array();
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            if ($old == $cat) {

            } else {
                $items[$old] = $t;
                $old = $cat;
                $t = array();
            }
            $t[] = ["id" => $row->category_id, "cat" => $category[$row->category_id], "sid" => $row->id, "scat" => $row->sub_category];
        }
        $subcategorybox = $items;

        $json_combo = json_encode($subcategorybox, 1);

        // get category and city
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            $catname = $category[$cat];
            $items["$catname"][$row->id] = $row->sub_category;
        }
        $subcategorybox = $items;

        return view('home', ["user" => $user, 'city' => $city, 'subcateg' => $subcategorybox, 'json_combo' => $json_combo]);
    }

    public function getSearch()
    {
    }

    public function postSearch(Request $request)
    {

        $user = Auth::user();

        $searchstr = (isset($request['searchstr']) ? $request['searchstr'] : "");
        $mcategoryid = (isset($request['mcategory']) ? $request['mcategory'] : "");
        $categoryid = (isset($request['category']) ? $request['category'] : "");
        $cityid = (isset($request['city']) ? $request['city'] : "");
        $price1 = (isset($request['price1']) ? $request['price1'] : "");
        $price2 = (isset($request['price2']) ? $request['price2'] : "");

        // valid only if sub-category / $category is selected
        $data1 = (isset($request['data1']) ? $request['data1'] : "");
        $data2 = (isset($request['data2']) ? $request['data2'] : "");
        $data3 = (isset($request['data3']) ? $request['data3'] : "");
        $data4 = (isset($request['data4']) ? $request['data4'] : "");
        $data5 = (isset($request['data5']) ? $request['data5'] : "");
        $data6 = (isset($request['data6']) ? $request['data6'] : "");
        $data7 = (isset($request['data7']) ? $request['data7'] : "");
        $data8 = (isset($request['data8']) ? $request['data8'] : "");

        $searchdata = compact("searchstr", "mcategoryid", "categoryid", "cityid", "price1", "price2", "data1", "data2", "data3", "data4", "data5", "data6", "data7", "data8");

        // list of sub categories in a main category
        $subCategories = SubCategory::where('category_id', $mcategoryid)->lists('id')->toArray();

        // list of sub categories in a mina caetgory with name
        $subCategories2 = SubCategory::where('category_id', $categoryid)->pluck('sub_category', 'id')->all();

        // get category and city
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            $catname = $category[$cat];
            $items["$catname"][$row->id] = $row->sub_category;
        }
        $subcategorybox = $items;

        //\DB::enableQueryLog();

        $listsearch = Listing::where('status', 1)->where('active', 1);

        if ($searchstr != "") {
            $listsearch->where('title', 'LIKE', '%' . $searchstr . '%');
        }

        // check for category or sub-category search

        if ($categoryid == "0" and $mcategoryid != "0") {
            // main category selected
            $listsearch->whereIn('subcategory_id', $subCategories);
        } else {
            // sub category selected
            $listsearch->where('subcategory_id', $categoryid);
        }

        if ($cityid != "") {
            $listsearch->where('city_id', $cityid);
        }

        if ($price1 != "") {
            $listsearch->where('price', '>=', $price1);
        }

        if ($price2 != "") {
            $listsearch->where('price', '<=', $price2);
        }

        if ($data1 != "") {
            $listsearch->where('data1', $data1);
        }

        if ($data2 != "") {
            $listsearch->where('data2', $data2);
        }

        if ($data3 != "") {
            $listsearch->where('data3', $data3);
        }
        if ($data4 != "") {
            $listsearch->where('data4', $data4);
        }

        if ($data5 != "") {
            $listsearch->where('data5', $data5);
        }

        if ($data6 != "") {
            $listsearch->where('data6', $data6);
        }
        if ($data7 != "") {
            $listsearch->where('data7', $data7);
        }
        if ($data8 != "") {
            $listsearch->where('data8', $data8);
        }

        $listings = $listsearch->orderBy('id', 'desc')->paginate(10);
        //dump(\DB::getQueryLog());

        // multi-level box
        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        $old = $subcategorylist[0]->category_id;
        $t = array();
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            if ($old == $cat) {

            } else {
                $items[$old] = $t;
                $old = $cat;
                $t = array();
            }
            $t[] = ["id" => $row->category_id, "cat" => $category[$row->category_id], "sid" => $row->id, "scat" => $row->sub_category];
        }
        $subcategorybox = $items;

        $json_combo = json_encode($subcategorybox, 1);

        //

        if ($categoryid == "") {
            $subCategoryData = new SubCategory();
        } else {
            $subCategoryData = SubCategory::find($categoryid);
        }

        return view('subcategory', ["user" => $user, 'listings' => $listings, 'city' => $city, 'subcateg' => $subcategorybox, 'subcateg2' => $subCategories2, 'subCategory' => $subCategoryData, 'searchdata' => $searchdata, 'json_combo' => $json_combo]);


    }

    public function postSearchCategory(Request $request)
    {

        $user = Auth::user();

        $searchstr = (isset($_POST['searchstr']) ? $_POST['searchstr'] : "");
        $categoryid = (isset($_POST['category']) ? $_POST['category'] : "");
        $cityid = (isset($_POST['city']) ? $_POST['city'] : "");
        $price1 = (isset($_POST['price1']) ? $_POST['price1'] : "");
        $price2 = (isset($_POST['price2']) ? $_POST['price2'] : "");

        $subCategories = SubCategory::where('category_id', $categoryid)->lists('id')->toArray();

        $subCategories2 = SubCategory::where('category_id', $categoryid)->pluck('sub_category', 'id')->all();

        // get category and city
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            $catname = $category[$cat];
            $items["$catname"][$row->id] = $row->sub_category;
        }
        $subcategorybox = $items;

        //\DB::enableQueryLog();

        $listsearch = Listing::where('status', 1)->where('active', 1);

        if ($searchstr != "") {
            $listsearch->where('title', 'LIKE', '%' . $searchstr . '%');
        }

        if ($categoryid != "") {
            $listsearch->where('subcategory_id', $categoryid);
        }
        if ($cityid != "") {
            $listsearch->where('city_id', $cityid);
        }

        if ($price1 != "") {
            $listsearch->where('price', '>=', $price1);
        }

        if ($price2 != "") {
            $listsearch->where('price', '<=', $price2);
        }

        $listings = $listsearch->orderBy('id', 'desc')->paginate(10);
        //dump(\DB::getQueryLog());

        return view('category', ["user" => $user, 'listings' => $listings, 'city' => $city, 'subcateg' => $subcategorybox, 'subcateg2' => $subCategories2]);

    }

    public function postSearchSubCategory(Request $request)
    {

        $user = Auth::user();

        $searchstr = (isset($_POST['searchstr']) ? $_POST['searchstr'] : "");
        $categoryid = (isset($_POST['category']) ? $_POST['category'] : "");
        $cityid = (isset($_POST['city']) ? $_POST['city'] : "");
        $price1 = (isset($_POST['price1']) ? $_POST['price1'] : "");
        $price2 = (isset($_POST['price2']) ? $_POST['price2'] : "");

        // valid only if sub-category / $category is selected
        $data1 = (isset($_POST['data1']) ? $_POST['data1'] : "");
        $data2 = (isset($_POST['data2']) ? $_POST['data2'] : "");
        $data3 = (isset($_POST['data3']) ? $_POST['data3'] : "");
        $data4 = (isset($_POST['data4']) ? $_POST['data4'] : "");
        $data5 = (isset($_POST['data5']) ? $_POST['data5'] : "");
        $data6 = (isset($_POST['data6']) ? $_POST['data6'] : "");
        $data7 = (isset($_POST['data7']) ? $_POST['data7'] : "");
        $data8 = (isset($_POST['data8']) ? $_POST['data8'] : "");

        $searchdata = compact("searchstr", "categoryid", "cityid", "price1", "price2", "data1", "data2", "data3", "data4", "data5", "data6", "data7", "data8");

        $subCategories = SubCategory::where('category_id', $categoryid)->lists('id')->toArray();

        $subCategories2 = SubCategory::where('category_id', $categoryid)->pluck('sub_category', 'id')->all();

        // get category and city
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            $catname = $category[$cat];
            $items["$catname"][$row->id] = $row->sub_category;
        }
        $subcategorybox = $items;

        //\DB::enableQueryLog();

        $listsearch = Listing::where('status', 1)->where('active', 1);

        if ($searchstr != "") {
            $listsearch->where('title', 'LIKE', '%' . $searchstr . '%');
        }

        if ($categoryid != "") {
            $listsearch->where('subcategory_id', $categoryid);
        }
        if ($cityid != "") {
            $listsearch->where('city_id', $cityid);
        }

        if ($price1 != "") {
            $listsearch->where('price', '>=', $price1);
        }

        if ($price2 != "") {
            $listsearch->where('price', '<=', $price2);
        }

        if ($data1 != "") {
            $listsearch->where('data1', $data1);
        }

        if ($data2 != "") {
            $listsearch->where('data2', $data2);
        }

        if ($data3 != "") {
            $listsearch->where('data3', $data3);
        }
        if ($data4 != "") {
            $listsearch->where('data4', $data4);
        }

        if ($data5 != "") {
            $listsearch->where('data5', $data5);
        }

        if ($data6 != "") {
            $listsearch->where('data6', $data6);
        }
        if ($data7 != "") {
            $listsearch->where('data7', $data7);
        }
        if ($data8 != "") {
            $listsearch->where('data8', $data8);
        }

        $listings = $listsearch->orderBy('id', 'desc')->paginate(10);
        //dump(\DB::getQueryLog());

        $subCategoryData = SubCategory::find($categoryid);

        return view('subcategory', ["user" => $user, 'listings' => $listings, 'city' => $city, 'subcateg' => $subcategorybox, 'subcateg2' => $subCategories2, 'subCategory' => $subCategoryData, 'searchdata' => $searchdata]);

        //return view('subcategory', ["user" => $user, 'listings' => $listings, 'subCategory' => $subCategoryData, 'city' => $city, 'subcateg' => $subcategorybox]);

    }

    public function getCategory($id, $title = "")
    {
        // $id = category
        $user = Auth::user();

        // list of subcategories in a category
        $subCategories = SubCategory::where('category_id', $id)->lists('id')->toArray();

        $subCategories2 = SubCategory::where('category_id', $id)->pluck('sub_category', 'id')->all();

        // multi-level box
        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        $old = $subcategorylist[0]->category_id;
        $t = array();
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            if ($old == $cat) {

            } else {
                $items[$old] = $t;
                $old = $cat;
                $t = array();
            }
            $t[] = ["id" => $row->category_id, "cat" => $category[$row->category_id], "sid" => $row->id, "scat" => $row->sub_category];
        }
        $subcategorybox = $items;

        $json_combo = json_encode($subcategorybox, 1);

        // get category and city
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            $catname = $category[$cat];
            $items["$catname"][$row->id] = $row->sub_category;
        }
        $subcategorybox = $items;

        $listings = Listing::where('status', 1)->where('active', 1)->whereIn('subcategory_id', $subCategories)->orderBy('id', 'desc')->paginate(10);

        return view('category', ["user" => $user, 'listings' => $listings, 'city' => $city, 'subcateg' => $subcategorybox, 'subcateg2' => $subCategories2, 'current' => $id, 'json_combo' => $json_combo]);

    }

    public function getSubCategory($id, $title = "")
    {
        // $id = subcategory
        $user = Auth::user();

        $searchstr = (isset($_POST['searchstr']) ? $_POST['searchstr'] : "");
        $mcategoryid = 0;
        $categoryid = (isset($_POST['category']) ? $_POST['category'] : "");
        $categoryid = $id;
// combo needs main category
        $subCategoryData = SubCategory::find($id);
        $mcategoryid = $subCategoryData["category_id"];

        $cityid = (isset($_POST['city']) ? $_POST['city'] : "");
        $price1 = (isset($_POST['price1']) ? $_POST['price1'] : "");
        $price2 = (isset($_POST['price2']) ? $_POST['price2'] : "");

        // valid only if sub-category / $category is selected
        $data1 = (isset($_POST['data1']) ? $_POST['data1'] : "");
        $data2 = (isset($_POST['data2']) ? $_POST['data2'] : "");
        $data3 = (isset($_POST['data3']) ? $_POST['data3'] : "");
        $data4 = (isset($_POST['data4']) ? $_POST['data4'] : "");
        $data5 = (isset($_POST['data5']) ? $_POST['data5'] : "");
        $data6 = (isset($_POST['data6']) ? $_POST['data6'] : "");
        $data7 = (isset($_POST['data7']) ? $_POST['data7'] : "");
        $data8 = (isset($_POST['data8']) ? $_POST['data8'] : "");

        $searchdata = compact("searchstr", "categoryid", "mcategoryid", "cityid", "price1", "price2", "data1", "data2", "data3", "data4", "data5", "data6", "data7", "data8");

        $subCategoryData = SubCategory::find($id);

        // multi-level box
        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        $old = $subcategorylist[0]->category_id;
        $t = array();
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            if ($old == $cat) {

            } else {
                $items[$old] = $t;
                $old = $cat;
                $t = array();
            }
            $t[] = ["id" => $row->category_id, "cat" => $category[$row->category_id], "sid" => $row->id, "scat" => $row->sub_category];
        }
        $subcategorybox = $items;

        $json_combo = json_encode($subcategorybox, 1);

        //

        // get category and city
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            $catname = $category[$cat];
            $items["$catname"][$row->id] = $row->sub_category;
        }
        $subcategorybox = $items;

        $listings = Listing::where('status', 1)->where('active', 1)->where('subcategory_id', $id)->orderBy('id', 'desc')->paginate(10);

        return view('subcategory', ["user" => $user, 'listings' => $listings, 'subCategory' => $subCategoryData, 'city' => $city, 'subcateg' => $subcategorybox, 'searchdata' => $searchdata, 'json_combo' => $json_combo]);

    }

    public function getCategoryList($id = 1)
    {
        $user = Auth::user();

        // get category and city
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            $catname = $category[$cat];
            $items["$catname"][$row->id] = $row->sub_category;
        }
        $subcategorybox = $items;

        // multi-level box
        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        $old = $subcategorylist[0]->category_id;
        $t = array();
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            if ($old == $cat) {

            } else {
                $items[$old] = $t;
                $old = $cat;
                $t = array();
            }
            $t[] = ["id" => $row->category_id, "cat" => $category[$row->category_id], "sid" => $row->id, "scat" => $row->sub_category];
        }
        $subcategorybox = $items;

        $json_combo = json_encode($subcategorybox, 1);

        $category = Category::where('active', 1)->orderBy('seq')->get();
        $subCategories = SubCategory::where('active', 1)->orderBy('seq')->get();

        return view('category-list', ["user" => $user, 'categories' => $category, 'subcategories' => $subCategories, 'city' => $city, 'subcateg' => $subcategorybox, 'selected' => $id, 'json_combo' => $json_combo]);


    }

    public function getAd($id, $title = "")
    {

        // $id = listing
        $user = Auth::user();

        $listing = Listing::findOrFail($id);

//        if ($listing->status == 1 or 1) {

        $photos = Photo::where('listing_id', $id)->select('photo')->get();

        $comments = Comment::where('listing_id', $id)->get();

        $count = $listing->views + 1;
        $listing->views = $count;
        $listing->save();

        $subcateg = SubCategory::find($listing->subcategory_id);

        return view('ad', ["user" => $user, 'listing' => $listing, 'photos' => $photos, 'comments' => $comments, 'subcateg' => $subcateg]);
        //       } else {
        //          return redirect()->route('home');
        //      }

    }

    public function postSendMessage(Request $request)
    {
        $user = Auth::user();

        $list_id = $request['id'];
        $msg = $request['msg'];

        if ($user != null) {

//
//            \DB::enableQueryLog();
            $list = Listing::find($list_id);
//            dump(\DB::getQueryLog());
//            dump($list);

            if ($list->user_id != $user->id) {
                $message = new Message();
                $message->listing_id = $list_id;
                $message->listing_user_id = $list->user_id;
                $message->other_user_id = $user->id;
                $message->user_id = $list->user_id;
                $message->description = $msg;
                $message->sender = 2;
                $message->save();

                $notification = new Notification();
                $notification->description = 'You have a new message';
                $notification->user_id = $list->user_id;
                $notification->save();

                Session::flash('flash_message', 'Message sent');
            } else {
                Session::flash('flash_message', 'You can not send message to yourself');
            }
        }
        //return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
        return redirect()->route('ad', [$list_id, "test"]);

    }

    public function getMessages()
    {
        // $id = listing
        $user = Auth::user();
//\DB::enableQueryLog();
        $messages = Message::groupBy(['listing_id', 'listing_user_id', 'user_id'])->havingRaw("listing_user_id = " . $user->id . " or other_user_id = " . $user->id)->get();
//        dump(\DB::getQueryLog());
//        dd($messages);

        // Mark all as READ
        $udpate = Message::where('user_id', $user->id)->update(['is_new' => 0]);

        return view('user.messages', ["user" => $user, 'messages' => $messages]);
    }

    public function getMessage($list_id, $list_user_id, $other_user_id)
    {
        $user = Auth::user();
//        echo $list_id;
//        echo $list_user_id;
//        echo $user_id;
        $messages = Message::where('listing_id', $list_id)->where('listing_user_id', $list_user_id)->where('other_user_id', $other_user_id)->get();

        $listing = Listing::find($list_id);
        $list_title = $listing->title;

        $tuser = User::find($list_user_id);
        $list_user_name = $tuser->name;

        $tuser2 = User::find($other_user_id);
        $user_name = $tuser2->name;

        return view('user.message', ["user" => $user, 'listing_id' => $list_id, 'listing_user_id' => $list_user_id, 'other_user_id' => $other_user_id, 'list_title' => $list_title, 'list_user_name' => $list_user_name, 'user_name' => $user_name, 'messages' => $messages]);
    }

    public function postMessageReply(Request $request)
    {
        $user = Auth::user();

        $list_id = $request["list_id"];
        $list_user_id = $request["list_user_id"];
        $other_user_id = $request["other_user_id"];
        $user_id = $request["user_id"];
        $sender = $request["sender"];
        $descriptin = $request["msg"];

        $message = new Message();
        $message->listing_id = $list_id;
        $message->listing_user_id = $list_user_id;
        $message->other_user_id = $other_user_id;
        $message->user_id = $user_id;
        $message->sender = $sender;
        $message->description = $descriptin;

        $notification = new Notification();
        $notification->description = 'You have a new message';
        if ($sender == 1)
            $notification->user_id = $other_user_id;
        else
            $notification->user_id = $list_user_id;
        $notification->save();

        $message->save();

        return redirect()->route('message', [$list_id, $list_user_id, $other_user_id]);

    }

    public function getNotifications()
    {
        // $id = listing
        $user = Auth::user();
//\DB::enableQueryLog();
        $notifications = Notification::where('user_id', $user->id)->orderBy('id', 'desc')->paginate(20);
//        dump(\DB::getQueryLog());
//        dd($messages);

        // Mark all as READ
        $udpate = Notification::where('user_id', $user->id)->update(['is_new' => 0]);

        return view('user.notifications', ["user" => $user, 'notifications' => $notifications]);
    }

    public function postCommentReply(Request $request)
    {
        $user = Auth::user();

        $list_id = $request["list_id"];
        //$list_user_id = $request["list_user_id"];
        $user_id = $user->id;

        $listing = Listing::find($list_id);

        $descriptin = $request["msg"];

        $comment = new Comment();
        $comment->listing_id = $list_id;
        $comment->listing_user_id = $listing->user_id;
        $comment->user_id = $user->id;

        $comment->description = $descriptin;

        $comment->save();

        return redirect()->route('ad', [$list_id, "test"]);

    }

    public function postCommentOffer(Request $request)
    {
        $user = Auth::user();

        $list_id = $request["list_id"];
        //$list_user_id = $request["list_user_id"];
        $user_id = $user->id;

        $listing = Listing::find($list_id);

        $offer = $request["offer"];

        $comment = new Comment();
        $comment->listing_id = $list_id;
        $comment->listing_user_id = $listing->user_id;
        $comment->user_id = $user->id;
        $comment->offer = $offer;
        $comment->save();

        return redirect()->route('ad', [$list_id, "test"]);

    }

    public function postReportAd(Request $request)
    {
        $user = Auth::user();

        $list_id = $request["list_id"];
        $reason = $request["reason"];
        $description = $request["reasontext"];

        $lreport = new ListingReport();
        $lreport->listing_id = $list_id;
        $lreport->type = $reason;
        $lreport->description = $description;
        $lreport->user_id = $user->id;
        $lreport->save();

        return redirect()->route('ad', [$list_id, "test"]);
    }

    public function postReportComment(Request $request)
    {
        $user = Auth::user();

        $list_id = $request["list_id"];
        $comment_id = $request["comment_id"];
        $reason = $request["reason"];
        $description = $request["reasontext"];

        $creport = new CommentReport();
        $creport->listing_id = $list_id;
        $creport->comment_id = $comment_id;
        $creport->type = $reason;
        $creport->description = $description;
        $creport->user_id = $user->id;
        $creport->save();

        return redirect()->route('ad', [$list_id, "test"]);

    }

    public function getDeleteComment($id)
    {
        $user = Auth::user();

        $comment = Comment::find($id);
        $list_id = $comment->listing_id;
        $comment->delete();

        return redirect()->route('ad', [$list_id, "test"]);

    }

    public function getDashboard()
    {
        $user = Auth::user();
        return view('user.home', ["user" => $user]);
    }

    public function getAccount()
    {
        $user = Auth::user();
        return view('user.account', ["user" => $user]);
    }

    public function postUpdateAccount(Request $request)
    {
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
            return Redirect::route('account')->withErrors($validator)->withInput();

        } else {
            $user->name = $request['name'];
            $user->email = $request['email'];
            $user->phone = $request['phone'];
            $user->phone_show = (isset($request['phone_show']) ? 1 : 0);
            $user->save();

            // getting all of the post images
            $file = $request['photos'];
            $destinationPath = 'uploads/users';
            if ($file) {
                // only jpg files of less than 2MB
                $filename = $file->getClientOriginalName();
                if ($file->getClientMimeType() == "image/jpeg" and $file->getClientSize() < 5242880) {

                    $fname = $user->id . "-" . $filename;

                    $user->photo = $fname;
                    $user->save();

                    //resize
                    $img = Image::make($file->getRealPath());
                    $img->resize(300, 300, function ($constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    })->save($destinationPath . '/' . $fname);
                    // end of resize
                }
            }
            Session::flash('flash_message', 'Account updated');
            return redirect()->route('account');
        }

    }

    public function postUpdatePass(Request $request)
    {
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
            return Redirect::route('account')->withErrors($validator)->withInput();

        } else {
            $password = $request['password'];
            $password_confirmation = $request['password_confirmation'];

            if ($password != "" and $password == $password_confirmation) {
                $user->password = bcrypt($password);
            }

            $user->save();
            Session::flash('flash_message', 'Password updated');
            return redirect()->route('account');
        }
    }

    public function getPostAds()
    {
        $user = Auth::user();

        // multi-level box
        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        $old = $subcategorylist[0]->category_id;
        $t = array();
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            if ($old == $cat) {

            } else {
                $items[$old] = $t;
                $old = $cat;
                $t = array();
            }
            $t[] = ["id" => $row->category_id, "cat" => $category[$row->category_id], "sid" => $row->id, "scat" => $row->sub_category];
        }
        $subcategorybox = $items;

        $json_combo = json_encode($subcategorybox, 1);


        $subcategory2 = SubCategory::where('active', 1)->orderBy('id')->select('id', 'data1', 'data2', 'data3', 'data4', 'data5', 'data6', 'data7', 'data8', 'details1', 'details2', 'details3', 'details4', 'details5', 'details6', 'details7', 'details8')->get();

        // get category and city
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategory = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        foreach ($subcategory as $row) {
            $cat = $row->category_id;
            $catname = $category[$cat];
            $items["$catname"][$row->id] = $row->sub_category;
        }
        $subcategory = $items;

        return view('post-ads', ["user" => $user, "category" => $subcategory, "subcat" => $subcategory2, "city" => $city, 'json_combo' => $json_combo]);
    }

    public function postPostAds(Request $request)
    {

        $user = Auth::user();

        $user_id = $user->id;

        // create the validation rules ------------------------
        $rules = array('category' => 'required', 'ad_type' => 'required', 'ad_title' => 'required', 'ad_description' => 'required', 'price' => 'required|numeric', //'negotiable'      => 'required',
            'posted_by' => 'required', 'phone' => 'required|between:13,14', 'seller_area' => 'required'
        );

        //echo $request["seller_area"]; dd($request);

        // do the validation ----------------------------------
        // validate against the inputs from our form
        $validator = Validator::make($request->all(), $rules);

        // check if the validator failed -----------------------
        if ($validator->fails()) {

            // get the error messages from the validator
            //$messages = $validator->messages();
            Session::flash('flash_message', 'There are some errors');
            // redirect our user back to the form with the errors from the validator
            return Redirect::route('post-ads')->withErrors($validator)->withInput();

        } else {

            $user = Auth::user();

            $listing = new Listing();

            $listing->subcategory_id = $request["category"];
            $listing->ad_type = $request["ad_type"];
            $listing->title = $request["ad_title"];
            $listing->description = $request["ad_description"];
            $listing->price = $request["price"];
            $listing->negotiable = (isset($request["negotiable"]) ? 1 : 0);
            $listing->posted_by = $request["posted_by"];
            $listing->city_id = $request["seller_area"];
            $listing->phone = $request["phone"];

            $listing->status = 1; // DOES NOT needs approval
            $listing->active = 1; // not archived
            $listing->user_id = $user->id;

            $listing->data1 = (isset($request["data1"]) ? $request["data1"] : "");
            $listing->data2 = (isset($request["data2"]) ? $request["data2"] : "");
            $listing->data3 = (isset($request["data3"]) ? $request["data3"] : "");
            $listing->data4 = (isset($request["data4"]) ? $request["data4"] : "");
            $listing->data5 = (isset($request["data5"]) ? $request["data5"] : "");
            $listing->data6 = (isset($request["data6"]) ? $request["data6"] : "");
            $listing->data7 = (isset($request["data7"]) ? $request["data7"] : "");
            $listing->data8 = (isset($request["data8"]) ? $request["data8"] : "");

            // extract id from video
            $youtube_url = $request["youtube"];
            if ($youtube_url != "") {
                parse_str(parse_url($youtube_url, PHP_URL_QUERY), $youtube_array);
                $youtube = $youtube_array['v'];

                $listing->youtube = $youtube;
            } else {
                $listing->youtube = "";
            }

            // getting all of the post images
            $file = $request['attachement'];
            $destinationPath = 'uploads/attachement';
            if ($file) {
                // only jpg files of less than 2MB
                $filename = $file->getClientOriginalName();
                if ($file->getClientMimeType() == "image/jpeg" and $file->getClientSize() < 5242880) {

                    $fname = $user->id . "-" . $filename;
                    $listing->attachement = $fname;
                    $upload_success = $file->move($destinationPath, $fname);
//
//
//                    //resize
//                    $img = Image::make($file->getRealPath());
//                    $img->resize(300, 300, function ($constraint) {
//                        $constraint->aspectRatio();
//                        $constraint->upsize();
//                    })->save($destinationPath . '/' . $fname);
                    // end of resize
                }
            }

            $listing->save();

            $listing_id = $listing->id;

            Session::flash('flash_message', 'Your Ad successfully added!');


//            $this->validate($request, [
//
//                'title' => 'required',
//
//                'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
//
//            ]);
//
//
//            $image = $request->file('image');
//
//            $input['imagename'] = time().'.'.$image->getClientOriginalExtension();
//
//
//
//
//            $destinationPath = public_path('/thumbnail');
//
//            $img = Image::make($image->getRealPath());
//
//            $img->resize(100, 100, function ($constraint) {
//
//                $constraint->aspectRatio();
//
//            })->save($destinationPath.'/'.$input['imagename']);
//
//
//            $destinationPath = public_path('/images');
//
//            $image->move($destinationPath, $input['imagename']);
//
//
//            $this->postImage->add($input);


            // getting all of the post images
            $files = $request['photos'];

            // Making counting of uploaded images
            $file_count = count($files);

            // start count how many uploaded
            $uploadcount = 0;
            $destinationPath = 'uploads/ads';
            if ($file_count > 0) {
                foreach ($files as $file) {
                    if ($file == null) break;
                    // only jpg files of less than 2MB
                    $filename = $file->getClientOriginalName();
                    if ($file->getClientMimeType() == "image/jpeg" and $file->getClientSize() < 5242880) {

                        $fname = $listing_id . "-" . $filename;
                        $photo = new Photo();
                        $photo->listing_id = $listing_id;
                        $photo->photo = $fname;
                        $photo->save();

                        //resize
                        $img = Image::make($file->getRealPath());
                        $img->resize(700, null, function ($constraint) {
                            $constraint->aspectRatio();
                            $constraint->upsize();
                        })->save($destinationPath . '/' . $fname);
                        // end of resize

                        // no need of it
                        // $upload_success = $file->move($destinationPath, $fname);
                        $uploadcount++;
                        if ($uploadcount > 24) break;
                    }
                }
            }
            return redirect()->route('user-ad');
        }
    }

    public function getUserAds()
    {
        $user = Auth::user();
        $subcategory = SubCategory::where('active', 1)->orderBy('seq')->pluck('sub_category', 'id');
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        // only approved
        $listings = Listing::where('user_id', $user->id)->orderBy('id', 'desc')->get();

        //where('status', 1)->

        return view('user.all-ads', ["user" => $user, "pageTitle" => "My Ads", "listings" => $listings, "category" => $subcategory, "city" => $city]);

    }

    public function getEditAds($id)
    {
        $user = Auth::user();

        // multi-level box
        $category = Category::where('active', 1)->orderBy('seq')->pluck('category', 'id');
        $subcategorylist = SubCategory::where('active', 1)->orderBy('category_id')->orderBy('seq')->get();

        $items = [];
        $old = $subcategorylist[0]->category_id;
        $t = array();
        foreach ($subcategorylist as $row) {
            $cat = $row->category_id;
            if ($old == $cat) {

            } else {
                $items[$old] = $t;
                $old = $cat;
                $t = array();
            }
            $t[] = ["id" => $row->category_id, "cat" => $category[$row->category_id], "sid" => $row->id, "scat" => $row->sub_category];
        }
        $subcategorybox = $items;

        $json_combo = json_encode($subcategorybox, 1);

        $subcategory2 = SubCategory::where('active', 1)->orderBy('id')->select('id', 'data1', 'data2', 'data3', 'data4', 'data5', 'data6', 'data7', 'data8', 'details1', 'details2', 'details3', 'details4', 'details5', 'details6', 'details7', 'details8')->get();

        $subcategory = SubCategory::where('active', 1)->orderBy('seq')->pluck('sub_category', 'id');
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        $listing = Listing::where('id', $id)->first();

        //$photo = $listing->photo()->first();

        $photos = $listing->photo()->get();

        return view('user.edit-ad', ["user" => $user, "listing" => $listing, "photos" => $photos, "category" => $subcategory, "subcat" => $subcategory2, "city" => $city, 'json_combo' => $json_combo]);

    }

    public function postEditAds(Request $request)
    {

        $user = Auth::user();

        $id = $request["id"];

        //dump($request);
        // create the validation rules ------------------------
        $rules = array('category' => 'required', 'ad_type' => 'required', 'ad_title' => 'required', 'ad_description' => 'required', 'price' => 'required|numeric', //'negotiable'      => 'required',
            'posted_by' => 'required', 'phone' => 'required|between:13,14', 'seller_area' => 'required'
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
            return Redirect::route('edit-ad', $id)->withErrors($validator)->withInput();

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

            // extract id from video
            // extract id from video
            $youtube_url = $request["youtube"];
            if ($youtube_url != "") {
                parse_str(parse_url($youtube_url, PHP_URL_QUERY), $youtube_array);
                $youtube = $youtube_array['v'];

                $listing->youtube = $youtube;
            } else {
                $listing->youtube = "";
            }

            $listing->active = (isset($request["active"]) ? 1 : 0);

            $listing->data1 = (isset($request["data1"]) ? $request["data1"] : "");
            $listing->data2 = (isset($request["data2"]) ? $request["data2"] : "");
            $listing->data3 = (isset($request["data3"]) ? $request["data3"] : "");
            $listing->data4 = (isset($request["data4"]) ? $request["data4"] : "");
            $listing->data5 = (isset($request["data5"]) ? $request["data5"] : "");
            $listing->data6 = (isset($request["data6"]) ? $request["data6"] : "");
            $listing->data7 = (isset($request["data7"]) ? $request["data7"] : "");
            $listing->data8 = (isset($request["data8"]) ? $request["data8"] : "");

            $listing->save();

            Session::flash('flash_message', 'Your Ad successfully updated!');

            // Delete Images

            $img = (isset($request["img"]) ? $request["img"] : array());
            if (count($img) > 0) {
                for ($i = 0; $i < count($img); $i++) {
                    $did = $img[$i];
                    $deletedRows = Photo::where('id', $did)->delete();
                }
            }


            $listing_id = $id; // we are editing

            // getting all of the post images
            $files = $request['photos'];

            // Making counting of uploaded images
            $file_count = count($files);
            // start count how many uploaded
            $uploadcount = 0;
            $destinationPath = 'uploads/ads';
            if ($file_count > 0) {
                foreach ($files as $file) {
                    if ($file == null) break;
                    // only jpg files of less than 2MB
                    $filename = $file->getClientOriginalName();
                    if ($file->getClientMimeType() == "image/jpeg" and $file->getClientSize() < 5242880) {

                        $fname = $listing_id . "-" . $filename;

                        $photo = new Photo();
                        $photo->listing_id = $listing_id;
                        $photo->photo = $fname;
                        $photo->save();

                        $upload_success = $file->move($destinationPath, $fname);
                        $uploadcount++;
                        if ($uploadcount > 24) break;
                    }
                }

            }

            //return redirect()->route('shippingaddress')->with('status', 'Address successfully updated!');
            return redirect()->route('user-ad');

        }

    }

    public function getDeleteAds($id)
    {

        $user = Auth::user();
        $listings = Listing::findOrFail($id)->delete();

        //('status', 1)->where('user_id', $user->id)->orderBy('id', 'desc')->get();
        //return view('user.all-ads', ["user" => $user, "listings" => $listings, "category" => $subcategory, "city" => $city]);

        return redirect()->route('dashboard');

    }

    public function getFavoriteDelete($id)
    {


        $user = Auth::user();
        $listid = $id;
        if ($user != null) {
            $checklisting = Favorite::where('user_id', $user->id)->where('listing_id', $listid)->delete();
        }
        return redirect()->route('dashboard');
    }

    public function getArchiveAd($id)
    {
        $user = Auth::user();
        $listing = Listing::find($id);
        if ($listing and $listing->user_id == $user->id) {
            $listing->active = 0;
            $listing->save();
        }
        Session::flash('flash_message', 'Ad De-Activated');
        return redirect()->back();
    }

    public function getUnArchiveAd($id)
    {
        $user = Auth::user();
        $listing = Listing::find($id);
        if ($listing and $listing->user_id == $user->id) {
            $listing->active = 1;
            $listing->save();
        }
        Session::flash('flash_message', 'Ad Activated');
        return redirect()->back();
    }

    public function getFavoriteAds()
    {
        $user = Auth::user();
        $subcategory = SubCategory::where('active', 1)->orderBy('seq')->pluck('sub_category', 'id');
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        //$listings = Listing::where('status', 1)->where('user_id', $user->id)->orderBy('id', 'desc')->get();
        //return view('user.all-ads', ["user" => $user, "listings" => $listings, "category" => $subcategory, "city" => $city]);

        $user_id = $user->id;
        // list of selected listings
        $ids = Favorite::where('user_id', $user_id)->lists('listing_id')->toArray();
        $listings = Listing::whereIn('id', $ids)->orderBy('id', 'desc')->get();

        return view('user.favorite-ads', ["user" => $user, "pageTitle" => "My Favorite Ads", "listings" => $listings, "category" => $subcategory, "city" => $city]);


    }

    public function getArchiveAds()
    {
        $user = Auth::user();
        $subcategory = SubCategory::where('active', 1)->orderBy('seq')->pluck('sub_category', 'id');
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        // only archive ads of user
        $listings = Listing::where('user_id', $user->id)->where('active', 0)->orderBy('id', 'desc')->get();
        //dump($listings);
        return view('user.all-ads', ["user" => $user, "pageTitle" => "Archive Ads", "listings" => $listings, "category" => $subcategory, "city" => $city]);

    }

    public function getPendingAds()
    {
        $user = Auth::user();
        $subcategory = SubCategory::where('active', 1)->orderBy('seq')->pluck('sub_category', 'id');
        $city = City::where('active', 1)->orderBy('seq')->pluck('city', 'id');

        // only not approved ads
        $listings = Listing::where('status', 0)->where('user_id', $user->id)->orderBy('id', 'desc')->get();
        return view('user.all-ads', ["user" => $user, "pageTitle" => "Pending Ads", "listings" => $listings, "category" => $subcategory, "city" => $city]);

    }

    public function getPage($slug)
    {
        $user = Auth::user();

        $page = Page::where('slug', $slug)->first();

        return view('page', ["user" => $user, "page" => $page]);

    }

    public function setFavorite(Request $request)
    {
        $user = Auth::user();
        $listid = $request->input('id');
        if ($user != null) {
            $checklisting = Favorite::where('user_id', $user->id)->where('listing_id', $listid)->get();

            if (count($checklisting) == 0) {
                $listing = new Favorite();
                $listing->listing_id = $listid;
                $listing->user_id = $user->id;
                $listing->save();
            }

            $response = array(
                'id' => $listid,
                'status' => 'success',
                'msg' => 'Ad set as favorite',
            );
            return \Response::json($response);
        }
        return 0;
    }

    public function unsetFavorite(Request $request)
    {
        $user = Auth::user();
        $listid = $request->input('id');
        if ($user != null) {
            $checklisting = Favorite::where('user_id', $user->id)->where('listing_id', $listid)->delete();

            $response = array(
                'id' => $listid,
                'status' => 'success',
                'msg' => 'Ad removed as favorite',
                'data' => $checklisting
            );
            return \Response::json($response);
        }
        return 0;
    }

}
