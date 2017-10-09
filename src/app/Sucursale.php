<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Sucursale
 * 
 * @property int $id
 * @property string $nombre
 * @property string $direccion
 * @property int $empresas_id
 * 
 * @property \App\Empresa $empresa
 * @property \Illuminate\Database\Eloquent\Collection $areas
 *
 * @package App
 */
class Sucursale extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'empresas_id' => 'int'
	];

	protected $fillable = [
		'nombre',
		'direccion',
		'empresas_id'
	];

	public function empresa()
	{
		return $this->belongsTo(\App\Empresa::class, 'empresas_id');
	}

	public function areas()
	{
		return $this->hasMany(\App\Area::class, 'sucursales_id');
	}
}
