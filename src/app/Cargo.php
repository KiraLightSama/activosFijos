<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Cargo
 * 
 * @property int $id
 * @property string $nombre
 * 
 * @property \Illuminate\Database\Eloquent\Collection $empleados
 *
 * @package App
 */
class Cargo extends Eloquent
{
	public $timestamps = false;

	protected $fillable = [
		'nombre'
	];

	public function empleados()
	{
		return $this->hasMany(\App\Empleado::class, 'cargos_id');
	}
}
