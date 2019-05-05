<?php

use Faker\Generator as Faker;
use Illuminate\Support\Str;
$factory->define(App\Category::class, function (Faker $faker) {
	$category_name = $faker->name;
	$category_slug = Str::slug($category_name, '-').'-'.time();
    return [
        'category_name' => $category_name,
        'category_slug' => $category_slug
    ];
});
