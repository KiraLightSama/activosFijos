<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proveedor extends Model
{

  protected $table ='proveedores';
  protected $primarykey ='id';
  //public $timestamps = false;

  protected $fillable = [
     'id ', 'nombre','empresa','telefono','correo'
  ];
}
