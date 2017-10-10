<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Plancuentum
 * 
 * @property int $cuentas_id
 * @property int $gestiones_id
 * @property string $nombre
 * 
 * @property \App\Cuenta $cuenta
 * @property \App\Gestione $gestione
 *
 * @package App
 */
class Plancuentum extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'cuentas_id' => 'int',
		'gestiones_id' => 'int'
	];

	protected $fillable = [
		'nombre'
	];

	public function cuenta()
	{
		return $this->belongsTo(\App\Cuenta::class, 'cuentas_id');
	}

	public function gestione()
	{
		return $this->belongsTo(\App\Gestione::class, 'gestiones_id');
	}
}
