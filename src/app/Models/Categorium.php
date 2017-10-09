<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Categorium
 * 
 * @property int $id
 * @property string $nombre
 * @property string $descripcion
 * 
 * @property \Illuminate\Database\Eloquent\Collection $grupos
 *
 * @package App
 */
class Categorium extends Eloquent
{
	public $timestamps = false;

	protected $fillable = [
		'nombre',
		'descripcion'
	];

	public function grupos()
	{
		return $this->hasMany(\App\Grupo::class, 'tipoCategoria_id');
	}
}
