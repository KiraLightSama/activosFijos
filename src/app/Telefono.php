<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Telefono
 * 
 * @property int $id
 * @property string $numero
 * @property string $descripcion
 * @property int $empleados_id
 * 
 * @property \App\Empleado $empleado
 *
 * @package App
 */
class Telefono extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'empleados_id' => 'int'
	];

	protected $fillable = [
		'numero',
		'descripcion',
		'empleados_id'
	];

	public function empleado()
	{
		return $this->belongsTo(\App\Empleado::class, 'empleados_id');
	}
}
