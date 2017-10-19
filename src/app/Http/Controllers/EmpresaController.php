<?php

namespace App\Http\Controllers;

use App\Empresa;
use Illuminate\Http\Request;
use App\Empresas;
use DB;
use Illuminate\Support\Facades\redirect;
use App\Http\Controllers\BitacoraController;


class EmpresaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $empresas=DB::table('empresas')->get();
        BitacoraController::store($request,"Lista de las empresas");
        return view('empresas.index',compact('empresas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('empresas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nit' => 'required',
            'razon_social' => 'required',
            'correo' => 'required|email',
            'telefono' => 'required'
        ]);
        $empresas = new Empresa();

        $empresas->nit = $request->input('nit');
        $empresas->razon_social = $request->input('razon_social');
        $empresas->correo = $request->input('correo');
        $empresas->telefono = $request->input('telefono');
        $empresas->logo = 'null';

        dd($empresas);

        //$Empresas->save();

        BitacoraController::store($request,"Creo un nueva Empresa");
        return redirect()->action('GrupoController@index');
    }


    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $empresas = Empresa::find($id);
        return view('emprasas.edit', compact('empresas'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
