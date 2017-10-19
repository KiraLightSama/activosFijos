<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Role;
use App\Empleado;

use DB;
use Hash;
use Illuminate\Support\Facades\Auth;
use App\Notifications\PostNewNotification;
use Symfony\Component\HttpFoundation\HeaderBag;
use App\Http\Controllers\BitacoraController;

class UserController extends Controller
{

    public function index(Request $request)
    {

        $data = User::orderBy('id','DESC')->get();
        $user=Auth::user();
        $bitacora=new Bitacora();
        $bitacora->Correo=$user->email;
        $bitacora->Nombre=$user->name;
        $bitacora->Accion='vista de tabla usuarios';
        $bitacora->Navegador=$request->header('User-Agent');
        $bitacora->Url=$request->fullUrl();

        $bitacora->save();

       // dd($request->ip());
        BitacoraController::store($request,"Lista de los usuarios");

        return view('users.index',compact('data'))
            ->with('i', ($request->input('page', 1) - 1) * 5);

    }

    public function create()
    {
      $empleados=Empleado::all();
        $roles = Role::all('name','display_name','id');

        return view('users.create',compact('roles','empleados'));
    }

    public function store(Request $request)
    {
    //  dd($request->all());

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password|min:6',
            'roles' => 'required',
        ]);
        $user=new User();

        $user->name=strtoupper( $request->input('name'));
        $user->email= strtoupper($request->input('email'));
        $user->password= Hash::make($request->input('password'));
        $user->status= $request->input('status');
        $user->empleados_id= $request->input('empleado');
        $user->save();
        foreach ($request->input('roles') as $key => $value) {
            $user->attachRole($value);
        }
        BitacoraController::store($request,"Creo un nuevo usuario");

        return redirect()->route('users.index')
                        ->with('success','User created successfully');
    }

    public function show($id)
    {
        $user = User::find($id);
        return view('users.show',compact('user'));
    }


    public function edit($id)
    {
        $user = User::find($id);
        $empleados=Empleado::all();
        $roles = Role::all('name','display_name','id');

        $userRole = $user->roles->pluck('id','id')->toArray();
        return view('users.edit',compact('user','roles','userRole','empleados'));
    }


    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'min:6|same:confirm-password',
            'roles' => 'required',

        ]);

        $input = $request->all();
        if(!empty($input['password'])){
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = array_except($input,array('password'));
        }
        $user = User::find($id);
        $user->update($input);
        DB::table('role_user')->where('user_id',$id)->delete();

        foreach ($request->input('roles') as $key => $value) {
            $user->attachRole($value);
        }
        BitacoraController::store($request,"Modifico un Usuario");

        return redirect()->route('users.index')
                        ->with('success','User updated successfully');
    }

    public function destroy($id)
    {
    //                    ->with('success','User deleted successfully');
    }





}
