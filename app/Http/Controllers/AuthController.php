<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class AuthController extends Controller
{
    public function index(){

        if ($user = Auth::user()) {
            if ($user->level == 'admin') {
                return redirect() -> intended('/listadmin');
            }elseif ($user -> level == 'owner'){
                return redirect() -> intended ('/listadmin');
            }
        }
        return view('/listadmin');
    }

    public function proses_login(Request $request){
        request()->validate([
            'email'=> 'required',
            'password'=> 'required',
            ]
        );

        $kredintials = $request->only('email', 'password');
        if(Auth::attempt($kredintials)){
            $user = Auth::user();
            if($user->level == 'admin'){
                return redirect()->intended('/listadmin');
            }elseif($user->level == 'owner'){
                return redirect()->intended('/listadmin');
            }
            return redirect()->intended('/');
        }
        return redirect('/listadmin') ->withInput() -> withErrors(['login_gagal' => 'silahkan login kembali']);
    }

    public function proses_loginApi(Request $request){
        request()->validate([
            'email'=> 'required',
            'password'=> 'required',
            ]
        );

        $input = $request->only('email', 'password');
        if(Auth::attempt($input)){
            $user = Auth::user();
            if($user->level == 'admin'){
                return response()->json(
                    [
                        "message"=>"login method succes as Admin",
                        "data"=>$user
                    ],
                );
            }elseif($user->level == 'owner'){
                return response()->json(
                    [
                        "message"=>"login method succes as owner",
                        "data"=>$user
                    ],
                );
            }
            return response()->json(
                [
                    "message"=>"login failed unregister",
                    "data"=>404
                ],
            );
        }
        return response()->json(
            [
                "message"=>"login failed error",
                "data"=>403
            ],
        );
    }
    // public function logout(Request $request ) {
    //     $request->session()->flush();
    //     Auth::logout();
    //     return Redirect('login');
    //     }
    public function proses_forgotpassword(Request $request){
        request()->validate([
            'email'=> 'required',
            ]
        );
    
        function logout(){
            return view('auth/login');
        }
    }

}