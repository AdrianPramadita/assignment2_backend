<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Users;

class TambahAdminController extends Controller
{
    // function tambahadmin(Request $request){
    //     $user = new User;
    //     $user->name=$request->name;
    //     $user->email=$request->email;
    //     $user->password=$request->password;
    //     $user->level=$request->level;

    //     $success=$user->save();
    //     if($success){
    //         return redirect('listadmin');
    //     }
    //     else{
    //         return redirect('tambahadmin');
    //     }
    //  }
    function addadmin(){
        return view('owner.addadmin');
    }

     function tambahadminapi(Request $request){
        $user = new User;
        $user->name=$request->name;
        $user->email=$request->email;
        $user->password=$request->password;
        $user->level=$request->level;

        $success=$user->save();
        if($success){
            return response()->json(['message'=>'success', 'data'=>$success]);
        }
        else{
            return response()->json(['message'=>'success', 'data'=>$success]); 
        }
     }

     public function prosestambahadmin(Request $request)
    {
        $user = new User;
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->password = $request->input('password');
        $user->section = $request->input('level');
        $user->save();
        return redirect()->back()->with('status','Admin Added Successfully');
    }



    public function create(Request $request){
    
				$user = new User;
                $user->name = $request->input('name');
                $user->email = $request->input('email');
                $user->password = $request->input('password');
                $user->level = $request->input('level');
				$user->save();
				return redirect('listadmin')->with('status',"Insert successfully");
				return redirect('not found')->with('failed',"operation failed");
    }





}
