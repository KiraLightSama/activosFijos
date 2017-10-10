<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Tarifa
 * 
 * @property int $id
 * @property int $cargoVariable_id
 * @property float $monto
 * @property int $periodo_id
 * 
 * @property \App\Cargovariable $cargovariable
 * @property \App\Periodo $periodo
 * @property \Illuminate\Database\Eloquent\Collection $cosumos
 *
 * @package App
 */
class Tarifa extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'cargoVariable_id' => 'int',
		'monto' => 'float',
		'periodo_id' => 'int'
	];

	protected $fillable = [
		'cargoVariable_id',
		'monto',
		'periodo_id'
	];

	public function cargovariable()
	{
		return $this->belongsTo(\App\Cargovariable::class, 'cargoVariable_id');
	}

	public function periodo()
	{
		return $this->belongsTo(\App\Periodo::class);
	}

	public function cosumos()
	{
		return $this->hasMany(\App\Cosumo::class, 'tarifas_id');
	}
}
