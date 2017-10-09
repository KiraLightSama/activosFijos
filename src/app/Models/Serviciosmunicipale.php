<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Serviciosmunicipale
 * 
 * @property int $id
 * @property string $nombre
 * @property string $descripcion
 * @property float $costo
 * @property int $uv_id
 * @property string $tipoCosto
 * 
 * @property \App\Uv $uv
 * @property \Illuminate\Database\Eloquent\Collection $costosserviciomunicipals
 *
 * @package App
 */
class Serviciosmunicipale extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'costo' => 'float',
		'uv_id' => 'int'
	];

	protected $fillable = [
		'nombre',
		'descripcion',
		'costo',
		'uv_id',
		'tipoCosto'
	];

	public function uv()
	{
		return $this->belongsTo(\App\Uv::class);
	}

	public function costosserviciomunicipals()
	{
		return $this->hasMany(\App\Costosserviciomunicipal::class, 'otrosServicios_id');
	}
}
