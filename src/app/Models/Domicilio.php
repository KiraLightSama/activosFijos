<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Domicilio
 * 
 * @property int $id
 * @property string $codigo
 * @property string $direccion
 * @property int $clientes_id
 * @property int $grupos_id
 * @property int $uv_id
 * 
 * @property \App\Grupo $grupo
 * @property \App\Cliente $cliente
 * @property \App\Uv $uv
 * @property \Illuminate\Database\Eloquent\Collection $cosumos
 *
 * @package App
 */
class Domicilio extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'clientes_id' => 'int',
		'grupos_id' => 'int',
		'uv_id' => 'int'
	];

	protected $fillable = [
		'codigo',
		'direccion',
		'clientes_id',
		'grupos_id',
		'uv_id'
	];

	public function grupo()
	{
		return $this->belongsTo(\App\Grupo::class, 'grupos_id');
	}

	public function cliente()
	{
		return $this->belongsTo(\App\Cliente::class, 'clientes_id');
	}

	public function uv()
	{
		return $this->belongsTo(\App\Uv::class);
	}

	public function cosumos()
	{
		return $this->hasMany(\App\Cosumo::class, 'domicilios_id');
	}
}
