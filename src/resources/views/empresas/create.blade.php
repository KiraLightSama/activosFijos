@extends('layouts.appp')

@section('content')


        <!-- MAIN CONTENT -->
        <div id="content">


            <!-- widget grid -->
            <section  class="">

                <!-- row -->
                <div class="row">

                    <!-- NEW WIDGET START -->
                    <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                        <!-- Widget ID (each widget will need unique ID)-->
                        <div class="jarviswidget " id="wid-id-0" data-widget-editbutton="false">

                            <header>
                                <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                                <h2>EMPRESAS</h2>

                            </header>

                            <!-- widget div-->
                            <div>

                                <!-- widget edit box -->
                                <div class="jarviswidget-editbox">
                                    <!-- This area used as dropdown edit box -->

                                </div>
                                <!-- end widget edit box -->

                                @if (count($errors) > 0)
                                  <div class="alert alert-danger">
                                    <strong>Whoops!</strong> TUVIMOS UN PROBLEMA, INTENTA NUEVAMENTE.<br><br>
                                    <ul>
                                      @foreach ($errors->all() as $error)
                                      <li>{{ $error }}</li>
                                      @endforeach
                                    </ul>
                                  </div>
                                  @endif
                      <!-- widget content -->
                      <div class="widget-body no-padding">
                      {!! Form::open(array('route' => 'empresas.store','method'=>'POST' ,'id'=>'smart-form-register','class'=>'smart-form')) !!}
                      {{ csrf_field() }}
                        <header>
                            CREAR NUEVO PROVEEDOR
                         </header>

                        <fieldset>
                            <section>
                                <label class="input"> <i class="icon-append fa fa-user"></i>
                                    <input type="text" name="nit" placeholder="INGRESE EL NIT DE SU EMPRESA..." style="text-transform:uppercase">
                                    <b class="tooltip tooltip-bottom-right">Ingrese el NIT</b> </label>
                            </section>
                            <section>
                                <label class="input"> <i class="icon-append fa fa-envelope-o"></i>
                                    <input type="text" name="razon_social" placeholder="INGRESE EL NOMBRE COMPLETO DE SU EMPRESA..." style="text-transform:uppercase">
                                    <b class="tooltip tooltip-bottom-right">Ingrese el nombre o razon social</b> </label>
                            </section>

                            <section>
                                <label class="input"> <i class="icon-append fa fa-lock"></i>
                                    <input type="email" name="correo" placeholder="INGRESE EL CORREO DE SU EMPRESA..." id="password">
                                    <b class="tooltip tooltip-bottom-right">Ingrese el correo</b> </label>
                            </section>
                            <section>
                                <label class="input"> <i class="icon-append fa fa-lock"></i>
                                    <input type="number" name="telefono" placeholder="INGRESE EL NUMERO DE TELEFONO.." id="password">
                                    <b class="tooltip tooltip-bottom-right">Ingrese el telefono</b> </label>
                            </section>
                        </fieldset>
                        <footer>
                            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>
                                GUARDAR
                            </button>
                        </footer>
                    {!! Form::close() !!}

                        </div>


                            </div>

                        </div>

                    </article>



                </div>

            </section>


        </div>





@endsection
