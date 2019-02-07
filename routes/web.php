<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::resource('books','BookController');
Route::resource('categories','CategoryController');
Route::resource('posts','BlogController');
Route::resource('reset','Auth\ResetPasswordController');
Route::get('/read/{slug}', 'BlogController@read');
Auth::routes();

Route::get('home', 'BlogController@home')->name('home');
Route::get('posts', 'BlogController@index')->name('posts');
Route::get('categories', 'CategoryController@index')->name('categories');
Route::get('resetpassword', 'Auth\ResetPasswordController@showResetForm')->name('resetpassword');
Route::get('readmore/{id}', 'BlogController@readmore')->name('readmore');

Route::get('auth/{provider}', 'Auth\LoginController@redirectToProvider');
Route::get('auth/{provider}/callback', 'Auth\LoginController@handleProviderCallback');