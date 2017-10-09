<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Grupo
 * 
 * @property int $id
 * @property string $nombre
 * @property string $codigo
 * @property int $tipoCategoria_id
 * 
 * @property \App\Categorium $categorium
 * @property \Illuminate\Database\Eloquent\Collection $cargovariables
 * @property \Illuminate\Database\Eloquent\Collection $detalleservicios
 * @property \Illuminate\Database\Eloquent\Collection $domicilios
 * @property \Illuminate\Database\Eloquent\Collection $periodos
 *
 * @package App
 */
class Grupo extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'tipoCategoria_id' => 'int'
	];

	protected $fillable = [
		'nombre',
		'codigo',
		'tipoCategoria_id'
	];

	public function categorium()
	{
		return $this->belongsTo(\App\Categorium::class, 'tipoCategoria_id');
	}

	public function cargovariables()
	{
		return $this->hasMany(\App\Cargovariable::class, 'grupos_id');
	}

	public function detalleservicios()
	{
		return $this->hasMany(\App\Detalleservicio::class, 'grupos_id');
	}

	public function domicilios()
	{
		return $this->hasMany(\App\Domicilio::class, 'grupos_id');
	}

	public function periodos()
	{
		return $this->hasMany(\App\Periodo::class, 'grupos_id');
	}
}
