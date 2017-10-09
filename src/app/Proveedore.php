<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Proveedore
 * 
 * @property int $id
 * @property string $nombre
 * @property string $empresa
 * @property string $telefono
 * @property string $correo
 * 
 * @property \Illuminate\Database\Eloquent\Collection $activos
 *
 * @package App
 */
class Proveedore extends Eloquent
{
	public $timestamps = false;

	protected $fillable = [
		'nombre',
		'empresa',
		'telefono',
		'correo'
	];

	public function activos()
	{
		return $this->hasMany(\App\Activo::class, 'proveedores_id');
	}
}
