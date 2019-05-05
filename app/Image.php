<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
	protected $fillable = [
		'imageUrl', 'product_id', 'company_id'
	];

    public function products(){
        return $this->belongsTo("App\Product", "product_id", "id");
    }
}
