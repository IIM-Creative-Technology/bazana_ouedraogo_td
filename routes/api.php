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

//on récupère tous les éléments

Route::get('/cours', function(Request $request) {
    $fields = $request->get('fields') ? explode('_',$request->get('fields')) :'*';
    return \App\Models\Cour::select($fields)->get();
});


Route::get('/cours/{courId}', function ($courId) {
    return \App\Models\Cour::find($courId);
});

//on remplace un ou plusieurs éléments par une nouvelle version

Route::put('/cours/{courId}', function ($courId, Request $request) {
    $cour = \App\Models\Cour::find($courId);
    return $cour->update($request->all());
});

//on crée un élément dans la ressource

Route::post('/cours', function (Request $request) {
    return \App\Models\Cour::create($request->all());
});

//on supprime un ou plusieurs éléments

Route::delete('/cours/{courId}', function ($courId) {
    return \App\Models\Cour::find($courId)->delete();
});


