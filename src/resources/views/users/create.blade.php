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
                                <h2>USUARIOS</h2>

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
                      {!! Form::open(array('route' => 'users.store','method'=>'POST' ,'id'=>'smart-form-register','class'=>'smart-form')) !!}

                        <header>
                            CREAR NUEVO USUARIO
                         </header>

                        <fieldset>
                            <section>
                                <label class="input"> <i class="icon-append fa fa-user"></i>
                                    <input type="text" name="name" placeholder="nombre completo" style="text-transform:uppercase">
                                    <b class="tooltip tooltip-bottom-right">NECESARIO PARA ENTRAR EN EL SITIO WEB</b> </label>
                            </section>




                            <section>
                                <label class="input"> <i class="icon-append fa fa-envelope-o"></i>
                                    <input type="email" name="email" placeholder="CORREO" style="text-transform:uppercase">
                                    <b class="tooltip tooltip-bottom-right">Necesario para verificar su cuenta</b> </label>
                            </section>

                            <section>
                                <label class="input"> <i class="icon-append fa fa-lock"></i>
                                    <input type="password" name="password" placeholder="CONTRASEÑA" id="password">
                                    <b class="tooltip tooltip-bottom-right">No olvide su contraseña</b> </label>
                            </section>


                            <section>
                                <label class="input"> <i class="icon-append fa fa-lock"></i>
                                    <input type="password" name="confirm-password" placeholder="CONFIRMAR CONTRASEÑA">
                                    <b class="tooltip tooltip-bottom-right">No olvide su contraseña</b> </label>
                            </section>

                            <section>
                              <div class="form-group">
                                <label>SELECCIONAR ENCARGADO</label>
                                <select  name="empleado" type="select"  style="width:100%" class="select2">
                                  <optgroup label="SELECCIONAR ENCARGADO">
                                    @foreach ($empleados as $key => $empleado)
                                    <option value="{{$empleado->id}}">{{$empleado->nombre }}</option>
                                    @endforeach
                                  </optgroup>
                                </select>
                              </div>
                            </section>

                            <section>
                              <div class="form-group">
                                <label>SELECCIONAR ROL</label>
                                <select  name="roles[]" type="select"  style="width:100%" class="select2">
                                  <optgroup label="SELECCIONAR ROL DEL USUARIO">
                                    @foreach ($roles as $key => $rol)
                                    <option value="{{$rol->id}}">{{$rol->display_name }}</option>
                                    @endforeach
                                  </optgroup>
                                </select>
                              </div>
                            </section>

                            <section>
                              <div class="form-group">
                                <label>SELECCIONAR ESTADO</label>
                                <select name="status" style="width:100%" class="select2">
                                  <optgroup label="SELECCIONAR ESTADO DEL USUARIO">
                                    <option  value="1">ACTIVADO</option>
                                    <option value="0">DESACTIVADO</option>
                                  </optgroup>
                                </select>
                              </div>
                            </section>


                        </fieldset>
                        <footer>
                            <button type="submit" class="btn btn-primary">
							<i class="fa fa-save"></i>
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
