<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bitacora extends Model
{

    protected $table ='Bitacora';
    protected $primarykey ='id';
    public $timestamps = false;

    protected $fillable = [
        'id ', 'Correo','Nombre','Accion','Navegador','Url','fecha'
    ];

}