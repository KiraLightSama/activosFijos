<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Ventasdeactivo
 * 
 * @property int $id
 * @property \Carbon\Carbon $fecha
 * @property float $monto
 * @property int $moneda
 * @property string $comprador
 * @property string $descripcion
 * @property int $bajas_id
 * 
 * @property \App\Baja $baja
 *
 * @package App
 */
class Ventasdeactivo extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'monto' => 'float',
		'moneda' => 'int',
		'bajas_id' => 'int'
	];

	protected $dates = [
		'fecha'
	];

	protected $fillable = [
		'fecha',
		'monto',
		'moneda',
		'comprador',
		'descripcion',
		'bajas_id'
	];

	public function baja()
	{
		return $this->belongsTo(\App\Baja::class, 'bajas_id');
	}
}
