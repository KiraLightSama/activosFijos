<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Costosserviciomunicipal
 * 
 * @property int $otrosServicios_id
 * @property int $cosumos_id
 * 
 * @property \App\Cosumo $cosumo
 * @property \App\Serviciosmunicipale $serviciosmunicipale
 *
 * @package App
 */
class Costosserviciomunicipal extends Eloquent
{
	protected $table = 'costosserviciomunicipal';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'otrosServicios_id' => 'int',
		'cosumos_id' => 'int'
	];

	public function cosumo()
	{
		return $this->belongsTo(\App\Cosumo::class, 'cosumos_id');
	}

	public function serviciosmunicipale()
	{
		return $this->belongsTo(\App\Serviciosmunicipale::class, 'otrosServicios_id');
	}
}
