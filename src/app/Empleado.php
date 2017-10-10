<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{

protected $table ='Empleados';
protected $primarykey ='id';
//public $timestamps = false;

protected $fillable = [
   'id ', 'nombre','apellido','sexo','correo','direccion','empleados_id', 'areas_id','cargos_id'
];

    public function area()
    {
        return $this->belongsTo(\App\Area::class, 'areas_id');
    }

    public function cargo()
    {
        return $this->belongsTo(\App\Cargo::class, 'cargos_id');
    }

    public function empleado()
    {
        return $this->belongsTo(\App\Empleado::class, 'empleados_id');
    }

    public function alta()
    {
        return $this->hasMany(\App\Altum::class, 'empleados_id');
    }

    public function empleados()
    {
        return $this->hasMany(\App\Empleado::class, 'empleados_id');
    }

    public function telefonos()
    {
        return $this->hasMany(\App\Telefono::class, 'empleados_id');
    }

    public function transferencias()
    {
        return $this->hasMany(\App\Transferencia::class, 'empleados_id');
    }

    public function users()
    {
        return $this->hasMany(\App\User::class, 'empleados_id');
    }
}
