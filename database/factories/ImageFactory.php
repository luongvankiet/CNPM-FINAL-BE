<?php

use Faker\Generator as Faker;

$factory->define(App\Image::class, function (Faker $faker) {
    return [
        'imageUrl' => $faker->imageUrl(640, 480),
        'product_id' =>  App\Product::all()->random()->id
    ];
});
