<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Pemasukan;
class PemasukanController extends Controller
{
    
    function PemasukanView() {
        $pemasukans = Pemasukan::paginate(10);
        return view('pages.pemasukan', ['pemasukans'=>$pemasukans]);
    }
    function PemasukanViewApi() {
        $pemasukans = DB::select('select * from pemasukans');
        return response()->json(['message'=>'success', 'data'=>$pemasukans]);
    }
    // data chart pemasukan
    // public function pemasukan($id);
    
    //     $categories = [];
    //     $data = [];

    //     foreach($pemasukans as $pemasukans){
    //         $categories[] = $pemasukans->created_at;
    //         $data[] = $pemasukans->price;
    //     }
        
    //     return view('pages.pemasukan', ['pemasukans'=>$pemasukans,'categories']);

    
    
    
    
    
    function OrderList(){
       
    }
}
