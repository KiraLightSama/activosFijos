<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Grupo extends Model
{
  protected $table ='grupos';
  protected $primarykey ='id';
  public $timestamps = false;

  protected $fillable = [
     'id ', 'nombre','direccion','codigo'
   ];
    public function activos()
    {
        return $this->hasMany(\App\Activo::class, 'grupos_id');
    }
}
