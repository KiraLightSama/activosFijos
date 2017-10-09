<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Transferencia
 * 
 * @property int $id
 * @property \Carbon\Carbon $fecha
 * @property int $empleados_id
 * @property int $causaDeTrasferencia_id
 * 
 * @property \App\Causadetrasferencium $causadetrasferencium
 * @property \App\Empleado $empleado
 * @property \Illuminate\Database\Eloquent\Collection $detalletrasferencia
 *
 * @package App
 */
class Transferencia extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'empleados_id' => 'int',
		'causaDeTrasferencia_id' => 'int'
	];

	protected $dates = [
		'fecha'
	];

	protected $fillable = [
		'fecha',
		'empleados_id',
		'causaDeTrasferencia_id'
	];

	public function causadetrasferencium()
	{
		return $this->belongsTo(\App\Causadetrasferencium::class, 'causaDeTrasferencia_id');
	}

	public function empleado()
	{
		return $this->belongsTo(\App\Empleado::class, 'empleados_id');
	}

	public function detalletrasferencia()
	{
		return $this->hasMany(\App\Detalletrasferencium::class, 'transferencias_id');
	}
}
