<?php

namespace App\Http\Controllers;

use App\Post;
use App\Category;
use App\Image;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $post = Post::with(['products' => function($product){
                $product->with('images');
            },
            'users' => function($user){
                $user->with('companies');
            }
        ])->orderBy('created_at', 'desc')->get();
        return response()->json($post, 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $post = new Post();
        $post->post_title = $request->post_title;
        $post->post_slug = Str::slug($request->post_title, '-').'-'.time();
        $post->post_content = $request->post_content;
        $post->category_id = $request->category_id;
        $post->user_id = $request->user_id;
        $post->save();
        if(sizeof($request->products) != 0){
            foreach ($request->products as $product ) {
                $p = new Product();
                $p->product_name = $product['product_name'];
                $p->price = $product['price'];
                $p->unit = $product['unit'];
                $p->post_id = $post->id;
                $p->save();
                if(sizeof($product['images']) != 0){
                    foreach ($product['images'] as $img ) {
                        $image = new Image();
                        $image->imageUrl = $img['imageUrl'];
                        $image->product_id = $p->id;
                        $image->save();
                    }
                }
            }
        }
        return json_encode($post);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $post = Post::where('post_slug', $slug)->with(['products' => function($product){
                $product->with('images');
            },
            'users' => function($user){
                $user->with('companies');
            }
        ])->first();
        return json_encode($post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $post = Post::where('id', $id)->first();
        $post->post_title = $request->post_title;
        $post->post_content = $request->post_content;
        $post->post_slug = Str::slug($request->post_title, '-').'-'.time();
        $post->user_id = $request->user_id;
        $post->active = $request->active;
        if(!is_null($request->category_name) || strlen($request->category_name) > 0){
            $category = new Category();
            $category->category_name = $request->category_name;
            $category->category_slug = Str::slug($request->category_name, '-').'-'.time();
            $category->save();
            $category_id = $category->id;
            $post->category_id = $category_id;
        } else {
            $post->category_id = $request->category_id;
        }
        $post->save();
        return json_encode($post);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $post->delete();
        return json_encode($post);
    }

    public function getLatestPosts()
    {
        $posts = Post::where('active', 1)->orderBy('created_at', 'desc')->with(['products' => function($product){
            $product->with('images');
        }])->limit(5)->get();
        return json_encode($posts);
    }
}
