<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\PemasukanController;
use App\Http\Controllers\PengeluaranController;
use App\Http\Controllers\TambahAdminController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/login',  [AuthController::class, 'proses_loginApi']);

//register admin routes
Route::post('/adminregister', [AdminController::class, 'createadmin']);
Route::post('/formtambahadminapi', [TambahAdminController::class, 'tambahadminapi']);
Route::get('/apipemasukanget', [PemasukanController::class,'PemasukanViewApi']);
Route::get('/apipengeluaranget', [PengeluaranController::class,'PengeluaranViewApi']);
Route::get ('/apipaginatepengeluaranget', [PengeluaranController::class,'PengeluaranViewApiPagination']);
