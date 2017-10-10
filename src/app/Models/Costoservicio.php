<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Costoservicio
 * 
 * @property int $cosumos_id
 * @property int $detalleServicio_id
 * @property float $monto
 * 
 * @property \App\Cosumo $cosumo
 * @property \App\Detalleservicio $detalleservicio
 *
 * @package App
 */
class Costoservicio extends Eloquent
{
	protected $table = 'costoservicio';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'cosumos_id' => 'int',
		'detalleServicio_id' => 'int',
		'monto' => 'float'
	];

	protected $fillable = [
		'monto'
	];

	public function cosumo()
	{
		return $this->belongsTo(\App\Cosumo::class, 'cosumos_id');
	}

	public function detalleservicio()
	{
		return $this->belongsTo(\App\Detalleservicio::class, 'detalleServicio_id');
	}
}
