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

Route::get('/cours', function ($courId, Request $request) {
    return \App\Models\Cour::all();
});


Route::get('/cours/{courId}', function ($courId) {
    return 'Mon cours n°' . $courId;
});


Route::post('/cours', function ($courId, Request $request) {
    return "J'ajoute le cours n°" . $courId;
});


Route::delete('/cours/{courId}', function ($courId) {
    return 'Je supprime le cours n°' . $courId;
});


Route::put('/cours/{courId}', function ($courId, Request $request) {
    return "Je modifie le cours n°" . $courId;
});