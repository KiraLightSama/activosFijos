<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Empresa
 * 
 * @property int $id
 * @property string $razon_social
 * @property string $nit
 * @property string $logo
 * @property string $correo
 * @property string $telefono
 * 
 * @property \Illuminate\Database\Eloquent\Collection $sucursales
 *
 * @package App
 */
class Empresa extends Eloquent
{
	public $timestamps = false;

	protected $fillable = [
		'razon_social',
		'nit',
		'logo',
		'correo',
		'telefono'
	];

	public function sucursales()
	{
		return $this->hasMany(\App\Sucursale::class, 'empresas_id');
	}
}
