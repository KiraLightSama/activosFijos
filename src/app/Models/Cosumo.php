<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Cosumo
 * 
 * @property int $id
 * @property string $lecturaActual
 * @property string $lecturaAnterior
 * @property int $diasConsumido
 * @property float $importeConsumo
 * @property float $importeTotal
 * @property \Carbon\Carbon $fechaEmision
 * @property \Carbon\Carbon $fechaPago
 * @property int $domicilios_id
 * @property int $tarifas_id
 * 
 * @property \App\Domicilio $domicilio
 * @property \App\Tarifa $tarifa
 * @property \Illuminate\Database\Eloquent\Collection $costoservicios
 * @property \Illuminate\Database\Eloquent\Collection $costosserviciomunicipals
 *
 * @package App
 */
class Cosumo extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'diasConsumido' => 'int',
		'importeConsumo' => 'float',
		'importeTotal' => 'float',
		'domicilios_id' => 'int',
		'tarifas_id' => 'int'
	];

	protected $dates = [
		'fechaEmision',
		'fechaPago'
	];

	protected $fillable = [
		'lecturaActual',
		'lecturaAnterior',
		'diasConsumido',
		'importeConsumo',
		'importeTotal',
		'fechaEmision',
		'fechaPago',
		'domicilios_id',
		'tarifas_id'
	];

	public function domicilio()
	{
		return $this->belongsTo(\App\Domicilio::class, 'domicilios_id');
	}

	public function tarifa()
	{
		return $this->belongsTo(\App\Tarifa::class, 'tarifas_id');
	}

	public function costoservicios()
	{
		return $this->hasMany(\App\Costoservicio::class, 'cosumos_id');
	}

	public function costosserviciomunicipals()
	{
		return $this->hasMany(\App\Costosserviciomunicipal::class, 'cosumos_id');
	}
}
