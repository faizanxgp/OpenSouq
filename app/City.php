<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    
    public function listing()
    {
        return $this->belongsTo('App\User');
    }
}
