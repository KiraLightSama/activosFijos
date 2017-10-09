<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Gestione
 * 
 * @property int $id
 * @property \Carbon\Carbon $fechaInicio
 * @property \Carbon\Carbon $fechaCierre
 * @property int $activo
 * 
 * @property \Illuminate\Database\Eloquent\Collection $depreciaciones
 * @property \Illuminate\Database\Eloquent\Collection $plancuenta
 *
 * @package App
 */
class Gestione extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'activo' => 'int'
	];

	protected $dates = [
		'fechaInicio',
		'fechaCierre'
	];

	protected $fillable = [
		'fechaInicio',
		'fechaCierre',
		'activo'
	];

	public function depreciaciones()
	{
		return $this->hasMany(\App\Depreciacione::class, 'gestiones_id');
	}

	public function plancuenta()
	{
		return $this->hasMany(\App\Plancuentum::class, 'gestiones_id');
	}
}
