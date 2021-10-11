<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Pengeluaran;
class PengeluaranController extends Controller
{

    function PengeluaranView() {
        $pengeluarans = Pengeluaran::paginate(10);
        // dd($pengeluarans);
        return view('pages.pengeluaran', ['pengeluarans'=>$pengeluarans]);
    }
    function PengeluaranViewApi() {
        $pengeluarans = DB::select('select * from pengeluarans');
        return response()->json(['message'=>'success', 'data'=>$pengeluarans]);
    }
    function PengeluaranViewApiPagination() {
        $pengeluarans = Pengeluaran::paginate();
        if($pengeluarans != null){
            return response()->json([
                'message'=>'pengeluaran success get',
                'code'=>200,
                'data'=>$pengeluarans,
            ]); 
        }    
        return response()->json([
            'message'=>'data not found',
            'code'=>301,
        ]);   
    }    
    public function records(Request $request)
    {
        if ($request->ajax()) {
    
            if ($request->input(' created_at') && $request->input('updated_at')){
                } else {
                    $pengeluarans = Pengeluaran::latest()->get();
                    }    
            }
    
        //     return response()->json([
        //         'pengeluarans' => $pengeluarans
        //     ]);
        // } else {
        //     abort(403);
        // }
//         date('d-m-Y', strtotime($user->from_date));
//         {{date_format($data->con_date_maintained,'D M Y')}}

// {{ $data->con_wash_start_date == null ? date_format($data->con_date_maintained,'D M Y') : "-" }}    
// $editData->hld_end_date ? date('d-m-Y',strtotime($editData->hld_end_date)) : null 

// date('d-m-Y',strtotime(str_replace('/', '-', $editData->hld_end_date) 
                       
// date_format(date_create($editData->hld_end_date),'d-m-Y') 
                       
// $editData->hld_end_date->format('d-m-Y') 
                       
// \Carbon\Carbon::parse($editData->hld_end_date)->format('d/m/Y')
    }

}