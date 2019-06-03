<?php

use Illuminate\Http\Request;

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

Route::group([
    'middleware' => ['auth:api', 'cors']
], function () {
    Route::post('tasks', 'TasksController@store');
    Route::get('usertasks/{userId}', 'TasksController@filterByUser');
    Route::put('tasks/{tasks}', 'TasksController@update');
    Route::delete('tasks/{tasks}', 'TasksController@delete');
    Route::post('logout', 'Auth\LoginController@logout');
});

Route::group([
    'middleware' => ['api', 'cors'],
], function () {
    Route::post('login', 'Auth\LoginController@login');
    Route::post('register', 'Auth\RegisterController@register');
});
