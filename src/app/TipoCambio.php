<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoCambio extends Model
{
  protected $table ='tipodecambio';
  protected $primarykey ='id';
    public $timestamps = false;

    protected $casts = [
        'valor' => 'float'
    ];

    protected $dates = [
        'fecha'
    ];

    protected $fillable = [
        'valor',
        'fecha'
    ];
    public function activos()
    {
        return $this->hasMany(\App\Activo::class, 'tipoDeCambio_id');
    }

    public function bajas()
    {
        return $this->hasMany(\App\Baja::class, 'tipoDeCambio_id');
    }

    public function depreciaciones()
    {
        return $this->hasMany(\App\Depreciacione::class, 'tipoDeCambio_id');
    }


}
