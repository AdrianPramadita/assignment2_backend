<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Admins;
use App\Models\User;

class OwnerController extends Controller
{
    public function index(){
        return view('page/owner');
    }
    public function add(){
        return view('owner/add');
    }
    function listadmin() {
        $admins = DB::select('select * from users');
        return view('owner/listadmin', ['admins'=>$admins]);
    }
    // function delete($id){
    //     DB::delete('delete from users where id = ?', [$id]);
    //     return redirect('listadmin')->with(['message'=>'delete admin success']);
    
    //     // echo "<script>alert('succes delete');</script>";
    // }
    
    function formtambahadmin(){
        return view('owner.tambahadmin');
    }
    function getadmin() {
        $users = User::select('select * from users');
        return view('owner.listadmin', ['users'=>$users]);
    }
    function TambahAdminViewApi() {
        $users = DB::select('select * from users');
        return response()->json(['message'=>'success', 'data'=>$users]);
    }

    public function run()
    {
        $tanggal = "2021-01-02 10:10:10";
        $date = date("Y-M-D H:i:s",strtotime($tanggal));
        for($i = 1;$i<=250;$i++){
            DB::table('tbl_pemasukan')->insert([
                'pemasukan'=> rand(11000000,13000000),
                'create_data'=>$date
            ]);
            $date=date('Y-M-D H:i:s',strtotime('+1
    DAYS',strtotime($date)));
            
        }
    }
}