<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PemasukanController;
use App\Http\Controllers\PengeluaranController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\OwnerController;
use App\Http\Controllers\TambahAdminController;
use App\Http\Controllers\ForgotPasswordController;

Route::get('/', function () {
    return view('auth/login');
});

//authentication
Route::post('proses_login', [AuthController::class, 'proses_login'])->name('proses_login');
Route::post('proses_forgotpassword', [AuthController::class, 'proses_forgotpassword'])->name('proses_forgotpassword');

Route::get('/addadmin', [TambahAdminController::class, 'addadmin'])->name('addadmin');
Route::post('prosesinput', [TambahAdminController::class, 'prosestambahadmin']);
////////////////////////////////

//bawah ini route bisa di buka sama keduanya
Route::get('/pemasukanpage', [PemasukanController::class, 'PemasukanView'])->name('pemasukanpage');
Route::get('/pengeluaranpage', [PengeluaranController::class, 'PengeluaranView'])->name('pengeluaranpage');
Route::get('/chartpemasukan', function () {
    return view('pages/chart/chartpemasukan');
})->name('chartpemasukan');
Route::get('/orderList', function () {
    return view('pages/orderList');
})->name('orderList');
Route::get('/listadmin', [OwnerController::class, 'listadmin'])->name('listadmin');
// Route::get('delete/{id}', [OwnerController::class, 'delete']);

Route::post('inputproses', [TambahAdminController::class, 'create']);

Route::get('delete/{id}', function($id){
    // DB::delete('delete from users where id = ?', [$id]);
    return redirect('listadmin')->with(['message'=>'delete admin success']);
});

Route::get('edit/{id}', function($id){
    // DB::edit('edit from users where id = ?', [$id]);
    return redirect('listadmin')->with(['message'=>'edit admin success']);
});

Route::get('/fogotpassword' /* ini nama link */, [ForgotPasswordController::class,'forgotpassword' /* ini nama function */]);
