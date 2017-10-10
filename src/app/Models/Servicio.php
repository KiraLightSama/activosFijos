<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Servicio
 * 
 * @property int $id
 * @property string $nombre
 * @property float $costo
 * @property string $tipoCosto
 * 
 * @property \Illuminate\Database\Eloquent\Collection $detalleservicios
 *
 * @package App
 */
class Servicio extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'costo' => 'float'
	];

	protected $fillable = [
		'nombre',
		'costo',
		'tipoCosto'
	];

	public function detalleservicios()
	{
		return $this->hasMany(\App\Detalleservicio::class, 'servicios_id');
	}
}
