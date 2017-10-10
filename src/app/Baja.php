<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Baja
 *
 * @property int $id
 * @property \Carbon\Carbon $fecha
 * @property string $bajascol
 * @property int $causasDeBajas_id
 * @property int $tipoDeCambio_id
 *
 * @property \App\Causasdebaja $causasdebaja
 * @property \App\Tipodecambio $tipodecambio
 * @property \Illuminate\Database\Eloquent\Collection $detallebajas
 * @property \Illuminate\Database\Eloquent\Collection $ventasdeactivos
 *
 * @package App
 */
class Baja extends Eloquent
{
	public $timestamps = false;
	protected $table = 'bajas';
	protected $casts = [
		'causasDeBajas_id' => 'int',
		'tipoDeCambio_id' => 'int'
	];

	protected $dates = [
		'fecha'
	];

	protected $fillable = [
		'fecha',
		'bajascol',
		'causasDeBajas_id',
		'tipoDeCambio_id'
	];

	public function causasdebaja()
	{
		return $this->belongsTo(\App\Causasdebaja::class, 'causasDeBajas_id');
	}

	public function tipodecambio()
	{
		return $this->belongsTo(\App\Tipodecambio::class, 'tipoDeCambio_id');
	}

	public function detallebajas()
	{
		return $this->hasMany(\App\Detallebaja::class, 'bajas_id');
	}

	public function ventasdeactivos()
	{
		return $this->hasMany(\App\Ventasdeactivo::class, 'bajas_id');
	}
}
