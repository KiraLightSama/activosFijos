<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Detallebaja
 * 
 * @property int $cantidad
 * @property int $bajas_id
 * @property int $activos_id
 * 
 * @property \App\Activo $activo
 * @property \App\Baja $baja
 *
 * @package App
 */
class Detallebaja extends Eloquent
{
	protected $table = 'detallebaja';
	protected $primaryKey = 'cantidad';
	public $timestamps = false;

	protected $casts = [
		'bajas_id' => 'int',
		'activos_id' => 'int'
	];

	protected $fillable = [
		'bajas_id',
		'activos_id'
	];

	public function activo()
	{
		return $this->belongsTo(\App\Activo::class, 'activos_id');
	}

	public function baja()
	{
		return $this->belongsTo(\App\Baja::class, 'bajas_id');
	}
}
