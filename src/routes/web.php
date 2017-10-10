<?php

//Route::get('api/cotizacion', ['as'=>'datatable.getposts','uses'=>'PostController@getPosts']);
//use Datatables;

use Yajra\Datatables\Facades\Datatables;
use App\Cotizacion;
use App\User;
use App\Cliente;
use Illuminate\Support\Collection as Collection;



Route::auth();

Route::group(['middleware' => ['auth']], function() {

	Route::get('/home', 'HomeController@index')->name('home');

	Route::resource('users','UserController');

  Route::get('/','HomeController@index');

	// For Role
		Route::get('roles',['as'=>'roles.index','uses'=>'RoleController@index']);
		Route::get('roles/create',['as'=>'roles.create','uses'=>'RoleController@create']);
		Route::post('roles/create',['as'=>'roles.store','uses'=>'RoleController@store']);
		Route::get('roles/{id}',['as'=>'roles.show','uses'=>'RoleController@show']);
		Route::get('roles/{id}/edit',['as'=>'roles.edit','uses'=>'RoleController@edit']);
		Route::patch('roles/{id}',['as'=>'roles.update','uses'=>'RoleController@update']);
		Route::delete('roles/{id}',['as'=>'roles.destroy','uses'=>'RoleController@destroy']);



		Route::get('activos',['as'=>'activo.index','uses'=>'ActivoController@index']);
		Route::get('activos/create',['as'=>'activo.create','uses'=>'ActivoController@create']);
		Route::post('activos/create',['as'=>'activo.store','uses'=>'ActivoController@store']);

    Route::post('tipodecambio/create',['as'=>'tipodecambio.store','uses'=>'ActivoController@storeTipodeCambio']);


    Route::get('grupos',['as'=>'grupos.index','uses'=>'GrupoController@index']);
    Route::get('grupos/create',['as'=>'grupos.create','uses'=>'GrupoController@create']);
    Route::post('grupos/create',['as'=>'grupos.store','uses'=>'GrupoController@store']);

		Route::resource ('proveedores', 'ProveedorController');
    Route::get('backup/lista',['as'=>'backup.index','uses'=>'BackupController@index']);
    Route::get('backup',['as'=>'backup.backup','uses'=>'BackupController@backup']);

});
