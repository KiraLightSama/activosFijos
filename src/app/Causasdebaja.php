<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Causasdebaja
 * 
 * @property int $id
 * @property string $descripcion
 * @property int $activo
 * 
 * @property \Illuminate\Database\Eloquent\Collection $bajas
 *
 * @package App
 */
class Causasdebaja extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'activo' => 'int'
	];

	protected $fillable = [
		'descripcion',
		'activo'
	];

	public function bajas()
	{
		return $this->hasMany(\App\Baja::class, 'causasDeBajas_id');
	}
}
