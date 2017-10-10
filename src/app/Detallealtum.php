<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;


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
