<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Depreciacionactivo
 * 
 * @property int $id
 * @property int $depreciaciones_id
 * @property int $activos_id
 * @property \Carbon\Carbon $fechaIncorporacion
 * @property float $saldoInicial
 * @property float $altas
 * @property float $bajas
 * @property float $total
 * @property float $AITB
 * @property float $valorActualizado
 * @property float $saldoInicial_depreciacionAcumulada
 * @property float $AITB_depreciacionAcumulada
 * @property float $depreciacionGestion
 * @property float $baja_depreciacionAcumulada
 * @property float $valorActualizada_depreciacionAcumulada
 * @property float $valorNeto
 * @property float $vidaUtilRestante
 * 
 * @property \App\Activo $activo
 * @property \App\Depreciacione $depreciacione
 *
 * @package App
 */
class Depreciacionactivo extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'depreciaciones_id' => 'int',
		'activos_id' => 'int',
		'saldoInicial' => 'float',
		'altas' => 'float',
		'bajas' => 'float',
		'total' => 'float',
		'AITB' => 'float',
		'valorActualizado' => 'float',
		'saldoInicial_depreciacionAcumulada' => 'float',
		'AITB_depreciacionAcumulada' => 'float',
		'depreciacionGestion' => 'float',
		'baja_depreciacionAcumulada' => 'float',
		'valorActualizada_depreciacionAcumulada' => 'float',
		'valorNeto' => 'float',
		'vidaUtilRestante' => 'float'
	];

	protected $dates = [
		'fechaIncorporacion'
	];

	protected $fillable = [
		'depreciaciones_id',
		'activos_id',
		'fechaIncorporacion',
		'saldoInicial',
		'altas',
		'bajas',
		'total',
		'AITB',
		'valorActualizado',
		'saldoInicial_depreciacionAcumulada',
		'AITB_depreciacionAcumulada',
		'depreciacionGestion',
		'baja_depreciacionAcumulada',
		'valorActualizada_depreciacionAcumulada',
		'valorNeto',
		'vidaUtilRestante'
	];

	public function activo()
	{
		return $this->belongsTo(\App\Activo::class, 'activos_id');
	}

	public function depreciacione()
	{
		return $this->belongsTo(\App\Depreciacione::class, 'depreciaciones_id');
	}
}
