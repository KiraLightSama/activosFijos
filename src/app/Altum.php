<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Altum
 * 
 * @property int $id
 * @property \Carbon\Carbon $fecha
 * @property int $empleados_id
 * 
 * @property \App\Empleado $empleado
 * @property \Illuminate\Database\Eloquent\Collection $detallealta
 *
 * @package App
 */
class Altum extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'empleados_id' => 'int'
	];

	protected $dates = [
		'fecha'
	];

	protected $fillable = [
		'fecha',
		'empleados_id'
	];

	public function empleado()
	{
		return $this->belongsTo(\App\Empleado::class, 'empleados_id');
	}

	public function detallealta()
	{
		return $this->hasMany(\App\Detallealtum::class, 'alta_id');
	}
}
