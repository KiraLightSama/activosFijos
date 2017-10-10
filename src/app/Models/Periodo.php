<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Periodo
 * 
 * @property int $id
 * @property \Carbon\Carbon $fecha
 * @property int $grupos_id
 * 
 * @property \App\Grupo $grupo
 * @property \Illuminate\Database\Eloquent\Collection $tarifas
 *
 * @package App
 */
class Periodo extends Eloquent
{
	protected $table = 'periodo';
	public $timestamps = false;

	protected $casts = [
		'grupos_id' => 'int'
	];

	protected $dates = [
		'fecha'
	];

	protected $fillable = [
		'fecha',
		'grupos_id'
	];

	public function grupo()
	{
		return $this->belongsTo(\App\Grupo::class, 'grupos_id');
	}

	public function tarifas()
	{
		return $this->hasMany(\App\Tarifa::class);
	}
}
