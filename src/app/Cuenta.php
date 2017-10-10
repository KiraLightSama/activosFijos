<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Cuenta
 * 
 * @property int $id
 * @property string $codigo
 * @property string $nombre
 * @property string $descripcion
 * @property string $tipo
 * @property int $estado
 * @property int $activos_id
 * @property int $cuentas_id
 * @property int $esquemaContables_id
 * 
 * @property \App\Activo $activo
 * @property \App\Cuenta $cuenta
 * @property \App\Esquemacontable $esquemacontable
 * @property \Illuminate\Database\Eloquent\Collection $cuentas
 * @property \Illuminate\Database\Eloquent\Collection $plancuenta
 *
 * @package App
 */
class Cuenta extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'estado' => 'int',
		'activos_id' => 'int',
		'cuentas_id' => 'int',
		'esquemaContables_id' => 'int'
	];

	protected $fillable = [
		'codigo',
		'nombre',
		'descripcion',
		'tipo',
		'estado',
		'activos_id',
		'cuentas_id',
		'esquemaContables_id'
	];

	public function activo()
	{
		return $this->belongsTo(\App\Activo::class, 'activos_id');
	}

	public function cuenta()
	{
		return $this->belongsTo(\App\Cuenta::class, 'cuentas_id');
	}

	public function esquemacontable()
	{
		return $this->belongsTo(\App\Esquemacontable::class, 'esquemaContables_id');
	}

	public function cuentas()
	{
		return $this->hasMany(\App\Cuenta::class, 'cuentas_id');
	}

	public function plancuenta()
	{
		return $this->hasMany(\App\Plancuentum::class, 'cuentas_id');
	}
}
