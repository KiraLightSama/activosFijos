<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 09 Oct 2017 18:36:05 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class RoleUser
 * 
 * @property int $user_id
 * @property int $role_id
 * 
 * @property \App\Role $role
 * @property \App\User $user
 *
 * @package App
 */
class RoleUser extends Eloquent
{
	protected $table = 'role_user';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int',
		'role_id' => 'int'
	];

	public function role()
	{
		return $this->belongsTo(\App\Role::class);
	}

	public function user()
	{
		return $this->belongsTo(\App\User::class);
	}
}
