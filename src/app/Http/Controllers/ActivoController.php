<?php

namespace App\Http\Controllers;

use App\Activo;
use Illuminate\Http\Request;
use DB;

use App\Grupo;
use App\TipoCambio;
use App\Proveedor;
use App\Area;

class ActivoController extends Controller
{
  public function index(Request $request)
  {

        $activos=DB::table('activosfijos.view_activos')->get();

      return view('activos.index',compact('activos'));
  }


  public function create()
  {
      $grupos=Grupo::all();
      //$user = User::where("estado","=",1)->find(10);
      $tipoCambios=TipoCambio::where('fecha','=',date('Y-m-d'))->first();
      $proveedores=Proveedor::all();
      $areas=Area::all();
      return view('activos.create',compact('grupos','tipoCambios','proveedores','areas'));
  }

    public function storeTipodeCambio(Request $request){
        $this->validate($request, [
            'valor' => 'required',
        ]);
        $tipocambio=new TipoCambio();
        $tipocambio->valor=$request->input('valor');
        $tipocambio->fecha=date('Y-m-d');
        $tipocambio->save();
        return redirect()->back();

    }


  public function store(Request $request)
  {
      $this->validate($request, [
          'descripcion' => 'required',
          'valoradquirido'=> 'required',
          'moneda'=> 'required',
          'calificacion'=> 'required',
          'area'=> 'required',
          'proveedor'=> 'required',
          'grupo'=> 'required',

      ]);
      $tipoCambios=TipoCambio::where('fecha','=',date('Y-m-d'))->first();
//dd($tipoCambios->id);
      $activo=new Activo();
      $activo->codigo="0";

      $activo->descripcion=$request->input('descripcion');
      $activo->valoradquirido=$request->input('valoradquirido');
      $activo->moneda=$request->input('moneda');
      $activo->estado='inactivo';
      $activo->fechaCompra=date('Y-m-d');

      $activo->calificacion=$request->input('calificacion');
      $activo->tipoDeCambio_id=$tipoCambios->id;
      $activo->areas_id=$request->input('area');
      $activo->proveedores_id=$request->input('proveedor');
      $activo->grupos_id=$request->input('grupo');
      $activo->save();
      return redirect()->action('ActivoController@index');



  }




}
