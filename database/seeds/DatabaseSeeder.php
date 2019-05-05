<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        // $category = factory(App\Category::class, 5)->create()->each(function($cate){
        //     $cate->posts()->save(factory(App\Post::class)->make());
        // });;
        $categories = factory(App\Category::class, 10)->create();
        $users = factory(App\User::class, 20)->create()->each(function($u){
            $u->companies()->save(factory(App\Company::class)->make());
        });
        $posts = factory(App\Post::class, 50)->create()->each(function($post){
            $post->products()->saveMany(factory(App\Product::class, 3)->make())->each(function($product){
                $product->images()->saveMany(factory(App\Image::class, 2)->make());
            });
        });;
    }
}
