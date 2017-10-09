<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Cliente
 * 
 * @property int $id
 * @property string $nombre
 * @property string $apellidos
 * @property string $ci
 * @property string $telefono
 * @property int $empresas_id
 * 
 * @property \App\Empresa $empresa
 * @property \Illuminate\Database\Eloquent\Collection $domicilios
 *
 * @package App
 */
class Cliente extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'empresas_id' => 'int'
	];

	protected $fillable = [
		'nombre',
		'apellidos',
		'ci',
		'telefono',
		'empresas_id'
	];

	public function empresa()
	{
		return $this->belongsTo(\App\Empresa::class, 'empresas_id');
	}

	public function domicilios()
	{
		return $this->hasMany(\App\Domicilio::class, 'clientes_id');
	}
}
