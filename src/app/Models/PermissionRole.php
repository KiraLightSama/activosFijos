<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 26 Sep 2017 14:09:20 -0400.
 */

namespace App;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class PermissionRole
 * 
 * @property int $permission_id
 * @property int $role_id
 * 
 * @property \App\Permission $permission
 * @property \App\Role $role
 *
 * @package App
 */
class PermissionRole extends Eloquent
{
	protected $table = 'permission_role';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'permission_id' => 'int',
		'role_id' => 'int'
	];

	public function permission()
	{
		return $this->belongsTo(\App\Permission::class);
	}

	public function role()
	{
		return $this->belongsTo(\App\Role::class);
	}
}
