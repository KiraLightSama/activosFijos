<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoCambio extends Model
{
  protected $table ='tipodecambio';
  protected $primarykey ='id';
  public $timestamps = false;

  protected $fillable = [
     'id ', 'valor','fecha','nombre'];
}
