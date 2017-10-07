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
}
