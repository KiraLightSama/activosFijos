<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Depreciacione
 * 
 * @property int $id
 * @property \Carbon\Carbon $fecha
 * @property int $gestiones_id
 * @property int $ubicaciones_id
 * @property int $tipoDeCambio_id
 * 
 * @property \App\Gestione $gestione
 * @property \App\Tipodecambio $tipodecambio
 * @property \Illuminate\Database\Eloquent\Collection $depreciacionactivos
 *
 * @package App
 */
class Depreciacione extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'gestiones_id' => 'int',
		'ubicaciones_id' => 'int',
		'tipoDeCambio_id' => 'int'
	];

	protected $dates = [
		'fecha'
	];

	protected $fillable = [
		'fecha',
		'gestiones_id',
		'ubicaciones_id',
		'tipoDeCambio_id'
	];

	public function gestione()
	{
		return $this->belongsTo(\App\Gestione::class, 'gestiones_id');
	}

	public function tipodecambio()
	{
		return $this->belongsTo(\App\Tipodecambio::class, 'tipoDeCambio_id');
	}

	public function depreciacionactivos()
	{
		return $this->hasMany(\App\Depreciacionactivo::class, 'depreciaciones_id');
	}
}
