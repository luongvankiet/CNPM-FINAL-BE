<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = [
		'product_name', 'price', 'unit', 'post_id'
	];
    public function images(){
        return $this->hasMany("App\Image", "product_id", "id");
    }

    public function posts(){
        return $this->belongsTo("App\Post", "post_id", "id");
    }
}
