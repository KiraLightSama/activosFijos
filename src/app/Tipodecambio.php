<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Tipodecambio
 * 
 * @property int $id
 * @property float $valor
 * @property \Carbon\Carbon $fecha
 * 
 * @property \Illuminate\Database\Eloquent\Collection $activos
 * @property \Illuminate\Database\Eloquent\Collection $bajas
 * @property \Illuminate\Database\Eloquent\Collection $depreciaciones
 *
 * @package App
 */
class Tipodecambio extends Eloquent
{
	protected $table = 'tipodecambio';
	public $timestamps = false;

	protected $casts = [
		'valor' => 'float'
	];

	protected $dates = [
		'fecha'
	];

	protected $fillable = [
		'valor',
		'fecha'
	];

	public function activos()
	{
		return $this->hasMany(\App\Activo::class, 'tipoDeCambio_id');
	}

	public function bajas()
	{
		return $this->hasMany(\App\Baja::class, 'tipoDeCambio_id');
	}

	public function depreciaciones()
	{
		return $this->hasMany(\App\Depreciacione::class, 'tipoDeCambio_id');
	}
}
