<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\QueryException;
use Illuminate\Http\Exceptions\PostTooLargeException;
use Illuminate\Support\Facades\Validator;
class UserController extends Controller
{
    //create user account
    public function register(Request $request)
    {
        $fields = validator::make($request->all(),
            [
                'email' => 'required|string|unique:users,email',
                'password' => 'required|min:3|string|confirmed',
            ]
        );
        if($fields->fails()){
            return response($fields->errors());
        }
        
        $user = User::create([
            'email' => $request->email,
            'password' => Hash::make($request->password), 
            'role' => $request->role,
        ]);

        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }

    public function login(Request $request)
    {

        $fields = $request->validate(
            [
                'email' => 'required|string',
                'password' => 'required|string',
            ]
        );
        $user = User::where('email', $fields['email'])->first();
        if (!$user || !Hash::check($fields['password'], $user->password)) {
            return response([
                "message" => "Incorrect Credentials. Please check that both your email and password are correct"
            ], 401);
        }
        $token = $user->createToken('myapptoken')->plainTextToken;
        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }

    public function logout(Request $request)
    {
        auth()->user()->tokens()->delete();
        return [
            'message' => 'logged out'
        ];

    }


    
}
