<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Revaluotecnico
 * 
 * @property int $id
 * @property float $porcentajeDeVidaUtil
 * @property int $activos_id
 * 
 * @property \App\Activo $activo
 *
 * @package App
 */
class Revaluotecnico extends Eloquent
{
	protected $table = 'revaluotecnico';
	public $timestamps = false;

	protected $casts = [
		'porcentajeDeVidaUtil' => 'float',
		'activos_id' => 'int'
	];

	protected $fillable = [
		'porcentajeDeVidaUtil',
		'activos_id'
	];

	public function activo()
	{
		return $this->belongsTo(\App\Activo::class, 'activos_id');
	}
}
