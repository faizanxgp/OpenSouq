<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ListingReport extends Model
{
    public function listing()
    {
        return $this->belongsTo('App\Category');
    }
}