<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Detallealtum
 * 
 * @property int $id
 * @property int $activos_id
 * @property int $alta_id
 * @property int $cantidad
 * 
 * @property \App\Activo $activo
 * @property \App\Altum $altum
 *
 * @package App
 */
class Detallealtum extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'activos_id' => 'int',
		'alta_id' => 'int',
		'cantidad' => 'int'
	];

	protected $fillable = [
		'activos_id',
		'alta_id',
		'cantidad'
	];

	public function activo()
	{
		return $this->belongsTo(\App\Activo::class, 'activos_id');
	}

	public function altum()
	{
		return $this->belongsTo(\App\Altum::class, 'alta_id');
	}
}
