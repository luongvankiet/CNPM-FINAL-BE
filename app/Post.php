<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = "posts";

    protected $fillable = [
    	'post_title', 'post_content', 'post_slug', 'user_id', 'product_id', 'category_id', 'active'
    ];

    public function users()
    {
    	return $this->belongsTo("App\User", "user_id", "id");
    }

    public function categories()
    {
    	return $this->belongsTo("App\Category", "category_id", "id");
    }

    public function products()
    {
        return $this->hasMany("App\Product", "post_id", "id");
    }

}
