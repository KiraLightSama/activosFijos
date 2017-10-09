<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Cargovariable
 * 
 * @property int $id
 * @property string $rangoInicial
 * @property string $rangoFinal
 * @property string $unidad
 * @property int $grupos_id
 * 
 * @property \App\Grupo $grupo
 * @property \Illuminate\Database\Eloquent\Collection $tarifas
 *
 * @package App
 */
class Cargovariable extends Eloquent
{
	protected $table = 'cargovariable';
	public $timestamps = false;

	protected $casts = [
		'grupos_id' => 'int'
	];

	protected $fillable = [
		'rangoInicial',
		'rangoFinal',
		'unidad',
		'grupos_id'
	];

	public function grupo()
	{
		return $this->belongsTo(\App\Grupo::class, 'grupos_id');
	}

	public function tarifas()
	{
		return $this->hasMany(\App\Tarifa::class, 'cargoVariable_id');
	}
}
