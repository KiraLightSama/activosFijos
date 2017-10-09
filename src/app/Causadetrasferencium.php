<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Causadetrasferencium
 * 
 * @property int $id
 * @property string $descripcion
 * 
 * @property \Illuminate\Database\Eloquent\Collection $transferencias
 *
 * @package App
 */
class Causadetrasferencium extends Eloquent
{
	public $timestamps = false;

	protected $fillable = [
		'descripcion'
	];

	public function transferencias()
	{
		return $this->hasMany(\App\Transferencia::class, 'causaDeTrasferencia_id');
	}
}
