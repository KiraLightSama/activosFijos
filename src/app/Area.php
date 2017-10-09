<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
  protected $table ='areas';
  protected $primarykey ='id';
  public $timestamps = false;

  protected $fillable = [
     'id ', 'nombre','sucursal_id'
  ];

    public function sucursale()
    {
        return $this->belongsTo(\App\Sucursale::class, 'sucursales_id');
    }

    public function activos()
    {
        return $this->hasMany(\App\Activo::class, 'areas_id');
    }

    public function empleados()
    {
        return $this->hasMany(\App\Empleado::class, 'areas_id');
    }

}
