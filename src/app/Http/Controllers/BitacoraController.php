<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use App\Bitacora;

class BitacoraController extends Controller
{
        public function index(){
            $bitacoras= Bitacora::all();
            return view('bitacora.index',compact('bitacoras'));
        }

   
    public  static function store($request ,$accion)
    {
        $user=Auth::user();

        $bitacora=new Bitacora();
        $bitacora->Correo=$user->email;
        $bitacora->Nombre=$user->name;
        $bitacora->Accion=$accion;
        $bitacora->Navegador=$request->header('User-Agent');
        $bitacora->Url=$request->fullUrl();
        //   $bitacora->fecha=timezone_version_get();

        $bitacora->save();

    }
}
