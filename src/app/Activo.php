<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Activo extends Model
{
    protected $table ='activos';
    protected $primarykey ='id';
    public $timestamps = false;

    protected $fillable = [
        'id ', 'codigo','descripcion','valoradquirido','moneda','estado','fechaCompra','calificacion','tipoDeCambio_id','areas_id','proveedor_id','grupos_id',
    ];
}
