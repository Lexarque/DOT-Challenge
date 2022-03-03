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
    Route::post('/login', 'UserController@login');
    Route::post('/register', 'UserController@register');
    Route::get('/getAuth', 'UserController@getAuthenticatedUser');

 Route::group(['middleware' => ['jwt.verify:admin,staff,customer']], function(){
    
    Route::group(['middleware' => ['jwt.verify:admin,staff']], function(){
        Route::post('/games', 'GamesController@store');
        Route::put('/games/{id}', 'GamesController@update');
        Route::post('/carts', 'CartController@store');
        Route::put('/carts/{id}', 'CartController@update'); 
    });
    
    Route::group(['middleware' => ['jwt.verify:admin']], function(){
        Route::delete('/games/{id}', 'GamesController@destroy');
        Route::delete('/carts/{id}', 'CartController@destroy');
    });
    
    Route::get('/get_games', 'GamesController@show');
    Route::get('/games_category/{category}', 'GamesController@show_by_category');
    Route::get('/games_name/{name}', 'GamesController@show_by_name');
    Route::get('/games/{id}', 'GamesController@details');
    Route::get('get_carts', 'CartController@show');
    Route::get('carts/{id}', 'CartController@details');
});
