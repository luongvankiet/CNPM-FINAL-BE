<?php

use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    $x = 5; // Amount of digits
    $min = pow(10,$x-1);
    $max = pow(10,($x+1)-1);
    return [
        'product_name' => $faker->name,
        'price' => $faker->numberBetween($min, $max),
        'unit' => $faker->word,
        'post_id' => App\Post::all()->random()->id,
    ];
});
