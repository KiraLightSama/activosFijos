<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Distrito
 * 
 * @property int $id
 * @property string $nombre
 * 
 * @property \Illuminate\Database\Eloquent\Collection $uvs
 *
 * @package App
 */
class Distrito extends Eloquent
{
	protected $table = 'distrito';
	public $timestamps = false;

	protected $fillable = [
		'nombre'
	];

	public function uvs()
	{
		return $this->hasMany(\App\Uv::class);
	}
}
