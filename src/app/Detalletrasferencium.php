<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Detalletrasferencium
 * 
 * @property int $id
 * @property int $activos_id
 * @property int $transferencias_id
 * @property int $cantidad
 * 
 * @property \App\Activo $activo
 * @property \App\Transferencia $transferencia
 *
 * @package App
 */
class Detalletrasferencium extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'activos_id' => 'int',
		'transferencias_id' => 'int',
		'cantidad' => 'int'
	];

	protected $fillable = [
		'activos_id',
		'transferencias_id',
		'cantidad'
	];

	public function activo()
	{
		return $this->belongsTo(\App\Activo::class, 'activos_id');
	}

	public function transferencia()
	{
		return $this->belongsTo(\App\Transferencia::class, 'transferencias_id');
	}
}
