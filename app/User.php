<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'provider', 'provider_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function roles()
    {
        return $this->belongsToMany('App\Role', 'user_role', 'user_id', 'role_id');
    }
    
    public function hasAnyRole($roles)
    {
        if (is_array($roles)) {
            foreach ($roles as $role) {
                if ($this->hasRole($role)) {
                    return true;
                }
            }
        } else {
            if ($this->hasRole($roles)) {
                return true;
            }
        }
        return false;
    }
    
    public function hasRole($role)
    {
        if ($this->roles()->where('name', $role)->first()) {
            return true;
        }
        return false;
    }

    public function favorite()
    {
        //return $this->belongsToMany('App\Favorite', 'user_favorite', 'user_id', 'listing_id');
        return $this->hasMany('App\Favorite');
    }

//SELECT * FROM `listings` WHERE listings.id in (select listing_id from user_favorite where user_id=3)

	public function xx() {
		//return $this->
	}
	
//	public function type() {
//		return 'abc';
//	}

    public function messages() {
        return $this->hasMany('App\Message');
    }

    public function hasMessage() {

        //\DB::enableQueryLog();
        $message = $this->messages()->where('is_new', '1')->count();
        //dump(\DB::getQueryLog());
        return $message;
    }

    public function notifications() {
        return $this->hasMany('App\Notification');
    }

    public function hasNotification() {

        //\DB::enableQueryLog();
        $notification = $this->notifications()->where('is_new', '1')->count();
        //dump(\DB::getQueryLog());
        return $notification;
    }
}
