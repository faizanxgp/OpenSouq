<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
	protected $table = 'user_favorite';

    public function listings()
    {
        return $this->belongsTo('App\Listing');
    }

    public function users()
    {
        return $this->belongsTo('App\User');
    }
	

}