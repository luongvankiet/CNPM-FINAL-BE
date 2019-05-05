<?php

use Faker\Generator as Faker;

$factory->define(App\Company::class, function (Faker $faker) {
    $x = 10; // Amount of digits
    $min = pow(10,$x-1);
    $max = pow(10,($x+1)-1);
    return [
        "company_name" => $faker->company,
        "phone_number" => $faker->phoneNumber,
        "fax_number" => $faker->numberBetween($min, $max),
        "address" => $faker->address,
        "description" => $faker->text,
        "logo_url" => $faker->imageUrl(400,400),
        "website_url" => $faker->url,
        'user_id' => App\User::all()->random()->id
    ];
});
