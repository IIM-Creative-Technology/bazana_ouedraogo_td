<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('/cours', function () {
    return \App\Models\Cour::all();
});


Route::get('/cours/{courId}', function ($courId) {
    return \App\Models\Cour::find($courId);
});

Route::put('/cours/{courId}', function ($courId, Request $request) {
    $cour = \App\Models\Cour::find($courId);
    return $cour->update($request->all());
});

Route::post('/cours', function (Request $request) {
    return \App\Models\Cour::created($request->all());
});


Route::delete('/cours/{courId}', function ($courId) {
    return \App\Models\Cour::find($courId)->delete();
});


