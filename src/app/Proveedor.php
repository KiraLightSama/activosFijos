<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proveedor extends Model
{
	public $timestamps = false;
	protected $table = 'proveedores';
	protected $fillable = [
		'nombre',
		'empresa',
		'telefono',
		'correo'
	];

	public function activos()
	{
		return $this->hasMany(\App\Activo::class, 'proveedores_id');
	}
}
