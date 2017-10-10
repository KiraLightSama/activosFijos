<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\redirect;
use App\Area;
use App\Http\Controllers\BitacoraController;

class AreaController extends Controller
{

    public function index(Request $request)
    {
        $areas = DB::table('areas')->get();
        BitacoraController::store($request,"Lista de Areas o Departamento");
        return view('areas.index',compact('areas'));
    }

    public function create()
    {
        $sucursal = DB::table ('sucursales')->get();
        return view ('areas.create', compact('sucursal'));
    }

    public function store(Request $request)
    {
      $this->validate($request, [
          'nombre' => 'required'
      ]);
      $areas = new Area();

      $areas->nombre = $request->input('nombre');
      $areas->sucursales_id = $request->input('ID');

      $areas->save();

      BitacoraController::store($request,"Creo un nuevo(a) Area o Departamento");
      return redirect()->action('GrupoController@index');

    }

    public function show($id)
    {

    }

    public function edit($id)
    {
        $areas = Area::findOrFail($id);

        return view('areas/edit', compact('areas'));

    }

    public function update(Request $request, $id)
    {
        $areas = Area::findOrFail($id);

        $areas->nombre = $request->input('nombre');
        $areas->update();

        BitacoraController::store($request,"Modifico un Area");
        return Redirect::to ('areas');
    }

    public function destroy($id)
    {

    }
}
