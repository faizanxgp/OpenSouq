<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Listing extends Authenticatable {
	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['ad_title', 'ad_description', 'price',];
	
	/**
	 * The attributes that should be hidden for arrays.
	 *
	 * @var array
	 */
	
	public function user() {
		return $this->belongsTo('App\User');
	}
	
	public function subcategory() {
		return $this->belongsTo('App\SubCategory');
	}
	
	public function city() {
		return $this->belongsTo('App\City');
	}
	
	public function photo() {
		return $this->hasMany('App\Photo');
	}

    public function favorite()
    {
        //return $this->belongsToMany('App\Favorite', 'user_favorite', 'user_id', 'listing_id');
        return $this->hasMany('App\Favorite');
    }

    public function isFavorite()
    {
        $user = \Auth::user();
//        if ($user == null) {
//            return 0;
//        } else {
//            return 1;
//        }
        //return $this->belongsToMany('App\Favorite', 'user_favorite', 'user_id', 'listing_id');
        return $this->hasMany('App\Favorite');
    }
	
	public function xxxx()
	{
		return $this->belongsToMany('App\User', 'user_favorite', 'listing_id', 'user_id');
	}
}
