<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{

protected $table ='personas';
protected $primarykey ='id';
//public $timestamps = false;

protected $fillable = [
   'id ', 'nombre','nit','direccion','telefono','cuno','status'
];


}
