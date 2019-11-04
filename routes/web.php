<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

Route::post('upload','UploadsController@upload_avatar');
Route::get('upload','UploadsController@upload_avatar');
Route::resource('projects','ProjectsController');
Route::resource('users','UsersController');
Route::get('/', function () {
    return view('welcome');
});
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/admin', 'ProjectsController@collect');


