<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:04 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Activo
 *
 * @property int $id
 * @property string $codigo
 * @property string $descripcion
 * @property float $valoradquirido
 * @property string $moneda
 * @property string $estado
 * @property \Carbon\Carbon $fechaCompra
 * @property string $calificacion
 * @property int $tipoDeCambio_id
 * @property int $areas_id
 * @property int $proveedores_id
 * @property int $grupos_id
 *
 * @property \App\Area $area
 * @property \App\Grupo $grupo
 * @property \App\Proveedore $proveedore
 * @property \App\Tipodecambio $tipodecambio
 * @property \Illuminate\Database\Eloquent\Collection $cuentas
 * @property \Illuminate\Database\Eloquent\Collection $depreciacionactivos
 * @property \Illuminate\Database\Eloquent\Collection $detallealta
 * @property \Illuminate\Database\Eloquent\Collection $detallebajas
 * @property \Illuminate\Database\Eloquent\Collection $detalletrasferencia
 * @property \Illuminate\Database\Eloquent\Collection $revaluotecnicos
 *
 * @package App
 */

use Illuminate\Database\Eloquent\Model;

class Activo extends Model
{
    public $timestamps = false;
    protected $table ='activos';

    protected $casts = [
        'valoradquirido' => 'float',
        'tipoDeCambio_id' => 'int',
        'areas_id' => 'int',
        'proveedores_id' => 'int',
        'grupos_id' => 'int'
    ];

    protected $dates = [
        'fechaCompra'
    ];

    protected $fillable = [
        'codigo',
        'descripcion',
        'valoradquirido',
        'moneda',
        'estado',
        'fechaCompra',
        'calificacion',
        'tipoDeCambio_id',
        'areas_id',
        'proveedores_id',
        'grupos_id'
    ];

    public function area()
    {
        return $this->belongsTo(\App\Area::class, 'areas_id');
    }

    public function grupo()
    {
        return $this->belongsTo(\App\Grupo::class, 'grupos_id');
    }

    public function proveedore()
    {
        return $this->belongsTo(\App\Proveedore::class, 'proveedores_id');
    }

    public function tipodecambio()
    {
        return $this->belongsTo(\App\Tipodecambio::class, 'tipoDeCambio_id');
    }

    public function cuentas()
    {
        return $this->hasMany(\App\Cuenta::class, 'activos_id');
    }

    public function depreciacionactivos()
    {
        return $this->hasMany(\App\Depreciacionactivo::class, 'activos_id');
    }

    public function detallealta()
    {
        return $this->hasMany(\App\Detallealtum::class, 'activos_id');
    }

    public function detallebajas()
    {
        return $this->hasMany(\App\Detallebaja::class, 'activos_id');
    }

    public function detalletrasferencia()
    {
        return $this->hasMany(\App\Detalletrasferencium::class, 'activos_id');
    }

    public function revaluotecnicos()
    {
        return $this->hasMany(\App\Revaluotecnico::class, 'activos_id');
    }
}
