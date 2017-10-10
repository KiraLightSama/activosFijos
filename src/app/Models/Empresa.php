<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Empresa
 * 
 * @property int $id
 * @property string $nombre
 * 
 * @property \Illuminate\Database\Eloquent\Collection $clientes
 * @property \Illuminate\Database\Eloquent\Collection $users
 *
 * @package App
 */
class Empresa extends Eloquent
{
	public $timestamps = false;

	protected $fillable = [
		'nombre'
	];

	public function clientes()
	{
		return $this->hasMany(\App\Cliente::class, 'empresas_id');
	}

	public function users()
	{
		return $this->hasMany(\App\User::class, 'empresas_id');
	}
}
