<?php

use Faker\Generator as Faker;

$factory->define(App\Post::class, function (Faker $faker) {
	$post_title = $faker->sentence;
	$post_slug = Str::slug($post_title, '-').'-'.time();
    return [
        "post_title" => $post_title,
        "post_content" => $faker->realText(400, 2),
        "post_slug" => $post_slug,
        'user_id' => App\User::all()->random()->id,
        'category_id' => App\Category::all()->random()->id,
        'active' => $faker->randomElement(['0', '1'])
    ];
});
