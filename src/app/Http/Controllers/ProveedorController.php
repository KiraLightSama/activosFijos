<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Proveedor;
use DB;
use Illuminate\Support\Facades\redirect;

class ProveedorController extends Controller
{
    public function index(Request $request)
    {
        $proveedores=DB::table('proveedores')->get();
        return view('provedores.index',compact('proveedores'));
    }
    public function create()
    {
        return view('provedores.create');
    }
    public function store (Request $request)
    {
        $this->validate($request, [
            'nombre' => 'required',
            'empresa'=> 'required',
            'telefono'=> 'required|numeric',
            'correo'=> 'required|email',
        ]);
        $proveedor = new Proveedor();
        $proveedor->nombre = $request->input('nombre');
        $proveedor->empresa = $request->input('empresa');
        $proveedor->telefono = $request->input('telefono');
        $proveedor->correo = $request->input('correo');

        $proveedor->save();
        return Redirect::to('proveedores');
    }
    public function edit ($id)
    {
        $proveedores = Proveedor::findOrFail($id);
        return view('provedores.edit', compact('proveedores'));
    }
    public function update (Request $request, $id)
    {
        $this->validate($request, [
            'nombre' => 'required',
            'empresa'=> 'required',
            'telefono'=> 'required|numeric',
            'correo'=> 'required|email',
        ]);
        $proveedor = Proveedor::findOrFail($id);

        $proveedor->nombre = $request->input('nombre');
        $proveedor->empresa = $request->input('empresa');
        $proveedor->telefono = $request->input('telefono');
        $proveedor->correo = $request->input('correo');

        $proveedor->update();

        return Redirect::to('proveedores');
    }
}
