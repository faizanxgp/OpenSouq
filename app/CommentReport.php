<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CommentReport extends Model
{
    public function comment()
    {
        return $this->belongsTo('App\Comment');
    }

    public function listing()
    {
        return $this->belongsTo('App\Listing');
    }
}