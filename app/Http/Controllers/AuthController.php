<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use App\Company;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        if (! $token = auth()->attempt($request->all())) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token);
    } 

    /**
     * Create new user
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request)
    {
        $this->validate($request, [
            'password' => 'required|confirmed',
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->profileImg = 'assets/images/default-user.jpg';
        $user->user_phone = 'undefined';
        $user->save();

        $company = new Company();
        $company->company_name = $request->company_name;
        $company->phone_number = $request->phone_number;
        $company->fax_number = $request->fax_number;
        $company->address = $request->address;
        $company->description = $request->description;
        $company->logo_url = 'assets/images/default-logo.png';
        if(!is_null($request->website_url)){
            $company->website_url = $request->website_url;
        }
        $company->user_id = $user->id;
        $company->save();
        return json_encode($user);
    }


    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        $userID = Auth::user()->id;

        $user = User::where('id', $userID)->with(['companies', 'posts' => function($post){
            $post->with(['products' => function($product){
                $product->with('images');
            },
            'users' => function($user){
                $user->with('companies');
            }]);
        }])->first();
        return json_encode($user);
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60
        ]);
    }
}