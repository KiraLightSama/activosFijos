<?php


namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Zizaco\Entrust\Traits\EntrustUserTrait;
class User extends Authenticatable
{

    use EntrustUserTrait; // add this trait to your user model

    protected $casts = [
		'status' => 'int',
		'empresas_id' => 'int'
	];

	protected $hidden = [
		'password',
		'remember_token'
	];

	protected $fillable = [
		'name',
		'email',
		'password',
		'status',
		'remember_token',
		'empresas_id'
	];

	public function empresa()
	{
		return $this->belongsTo(\App\Empresa::class, 'empresas_id');
	}

	public function roles()
	{
		return $this->belongsToMany(\App\Role::class);
	}
}
