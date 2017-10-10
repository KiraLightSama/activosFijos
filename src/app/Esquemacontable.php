<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Esquemacontable
 * 
 * @property int $id
 * @property string $nombre
 * @property float $aniosVidaUtil
 * @property float $coeficienteDepreciacion
 * 
 * @property \Illuminate\Database\Eloquent\Collection $cuentas
 *
 * @package App
 */
class Esquemacontable extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'aniosVidaUtil' => 'float',
		'coeficienteDepreciacion' => 'float'
	];

	protected $fillable = [
		'nombre',
		'aniosVidaUtil',
		'coeficienteDepreciacion'
	];

	public function cuentas()
	{
		return $this->hasMany(\App\Cuenta::class, 'esquemaContables_id');
	}
}
