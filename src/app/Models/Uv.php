<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Uv
 * 
 * @property int $id
 * @property string $nombre
 * @property int $distrito_id
 * 
 * @property \App\Distrito $distrito
 * @property \Illuminate\Database\Eloquent\Collection $domicilios
 * @property \Illuminate\Database\Eloquent\Collection $serviciosmunicipales
 *
 * @package App
 */
class Uv extends Eloquent
{
	protected $table = 'uv';
	public $timestamps = false;

	protected $casts = [
		'distrito_id' => 'int'
	];

	protected $fillable = [
		'nombre',
		'distrito_id'
	];

	public function distrito()
	{
		return $this->belongsTo(\App\Distrito::class);
	}

	public function domicilios()
	{
		return $this->hasMany(\App\Domicilio::class);
	}

	public function serviciosmunicipales()
	{
		return $this->hasMany(\App\Serviciosmunicipale::class);
	}
}
