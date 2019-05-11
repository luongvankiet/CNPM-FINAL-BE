<?php

use App\User;
use Illuminate\Support\Str;
use Faker\Generator as Faker;
use Illuminate\Support\Facades\Hash;
/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => Hash::make('password'), // password
        // 'remember_token' => Str::random(10),
        "user_phone" => $faker->phoneNumber,
        'role' => $faker->randomElement(['admin', 'user']),
        'profileImg' =>  $faker->imageUrl(400,400),
        'active' => $faker->randomElement(['0', '1'])
    ];
});
