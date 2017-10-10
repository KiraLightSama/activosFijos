@extends('layouts.appp')
@section('content')
<div   id="content">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div  class="panel-heading"> <b> BIENVENIDO AL SISTEMA DE ACTIVOS FIJOS </b></div>

                <div class="panel-body">
                  <!-- MAIN PANEL -->
                  <div class="row">

                    <table id="cotizacionn" class="table table-striped" style="clear: both">
                        <tbody>
                          <tr>
                              <td>  CODIGO</td>
                              <td>  {{$user->id}}</td>
                          </tr>
                        <tr>
                            <td>  USUARIO</td>
                            <td>  {{$user->name}}</td>
                        </tr>

                        <tr>
                            <td>  CORREO</td>
                            <td>   {{$user->email}}</td>
                        </tr>
                        </tbody>
                    </table>

                	</div>
      </div>
        </div>
    </div>
    </div>
</div>
@endsection
