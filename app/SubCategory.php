<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    public function category()
    {
        return $this->belongsTo('App\Category');
    }

    public function getDetails($id)
    {

        switch ($id) {
            case 1:
                return $this->transform($this->details1);
            case 2:
                return $this->transform($this->details2);
            case 3:
                return $this->transform($this->details3);
            case 4:
                return $this->transform($this->details4);
            case 5:
                return $this->transform($this->details5);
            case 6:
                return $this->transform($this->details6);
            case 7:
                return $this->transform($this->details7);
            case 8:
                return $this->transform($this->details8);

        }


        if ($id == 1) {

        }
    }

    public function transform($value)
    {
        if (trim($value) == "") {
            return array();
        } else {
            $new_array = array();
            foreach (explode(',', $value) as $key => $val) {
                $new_array[trim($val)] = trim($val);
            }
            return $new_array;
        }
    }
}
