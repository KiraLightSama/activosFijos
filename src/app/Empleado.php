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

}
