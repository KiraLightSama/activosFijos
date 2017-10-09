<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Detalleservicio
 * 
 * @property int $id
 * @property int $servicios_id
 * @property int $grupos_id
 * 
 * @property \App\Servicio $servicio
 * @property \App\Grupo $grupo
 * @property \Illuminate\Database\Eloquent\Collection $costoservicios
 *
 * @package App
 */
class Detalleservicio extends Eloquent
{
	protected $table = 'detalleservicio';
	public $timestamps = false;

	protected $casts = [
		'servicios_id' => 'int',
		'grupos_id' => 'int'
	];

	protected $fillable = [
		'servicios_id',
		'grupos_id'
	];

	public function servicio()
	{
		return $this->belongsTo(\App\Servicio::class, 'servicios_id');
	}

	public function grupo()
	{
		return $this->belongsTo(\App\Grupo::class, 'grupos_id');
	}

	public function costoservicios()
	{
		return $this->hasMany(\App\Costoservicio::class, 'detalleServicio_id');
	}
}
