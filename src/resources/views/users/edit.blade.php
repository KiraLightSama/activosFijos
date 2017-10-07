@extends('layouts.appp')

@section('content')



            <div id="content">



                <!-- widget grid -->
                <section class="">

                    <!-- row -->
                    <div class="row">

                        <!-- NEW WIDGET START -->
                        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                            <!-- Widget ID (each widget will need unique ID)-->
                            <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">

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
                                       <strong>Whoops!</strong> TUVIMOS UN PROBLEMA, INTENTA NUEVAMENTE<br><br>
                                       <ul>
                                           @foreach ($errors->all() as $error)
                                               <li>{{ $error }}</li>
                                           @endforeach
                                       </ul>
                                   </div>
                               @endif
                    <!-- widget content -->
                    <div class="widget-body no-padding">


             {!! Form::open(array('route' =>  ['users.update', $user->id],'method'=>'PATCH' ,'id'=>'smart-form-register','class'=>'smart-form')) !!}
        	    {!! Form::model($user, ['method' => 'PATCH','route' => ['users.update', $user->id]]) !!}

              {{ csrf_field() }}

                            <header>
                             MODIFICAR USUARIO
                             </header>

                            <fieldset>
                                <section>
                                    <label class="input"> <i class="icon-append fa fa-user"></i>
                                      {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'onkeyup="javascript:this.value=this.value.toUpperCase();" class="tooltip tooltip-bottom-right')) !!}

                                        <b class="tooltip tooltip-bottom-right">NECESARIO PARA ENTRAR EN EL SITIO WEB</b> </label>
                                </section>

                                <section>
                                    <label class="input"> <i class="icon-append fa fa-envelope-o"></i>
                                        {!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control')) !!}

                                        <b class="tooltip tooltip-bottom-right">Necesario para verificar su cuenta</b> </label>
                                </section>

                                <section>
                                    <label class="input"> <i class="icon-append fa fa-lock"></i>
                                     {!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control')) !!}
                                        <b class="tooltip tooltip-bottom-right">No olvide su contraseña</b> </label>
                                </section>


                                <section>
                                    <label class="input"> <i class="icon-append fa fa-lock"></i>
                                    {!! Form::password('confirm-password', array('placeholder' => 'Confirm Password','class' => 'form-control')) !!}
                                        <b class="tooltip tooltip-bottom-right">No olvide su contraseña</b> </label>
                                </section>
                                <section>
                                  <div class="form-group">
                                    <label>SELECCIONAR ENCARGADO</label>
                                    <select name="sucursal_id" style="width:100%" class="select2">
                                      <optgroup label="Seleccione El Encargado">
                                        @foreach ($empleados as $key => $empleado)
                                          <option value="{{$empleado->id}}"  @if($user->empleado->id==$empleado->id) selected="selected" @endif >{{$empleado->id }}    -&nbsp;{{$empleado->nombre }}</option>
                                      @endforeach

                                      </optgroup>
                                    </select>
                                  </div>
                                </section>

                                 <section>
                                   <div class="form-group">
                                     <label>SELECCIONAR ROLES</label>
                                     <select  name="roles[]" type="select"  style="width:100%" class="select2">
                                       <optgroup label="SELECCIONAR ROL DEL USUARIO">
                                         @foreach ($roles as $key => $rol)

                                          <option value="{{$rol->id}}" @if(in_array($rol->id,$userRole,true)) selected="selected" @endif >
                                            {{$rol->display_name }}
                                          </option>

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
                                         <option value="0" @if($user->status==0) selected="selected" @endif>DESACTIVADO</option>
                                         <option  value="1" @if($user->status==1) selected="selected" @endif >ACTIVADO</option>
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
	                           {!! Form::close() !!}

                    </div>
                    <!-- end widget content -->


                                </div>
                                <!-- end widget div -->

                            </div>

                        </article>
                        <!-- WIDGET END -->

                    </div>

                    <!-- end row -->

                    <!-- end row -->

                </section>
                <!-- end widget grid -->

            </div>
            <!-- END MAIN CONTENT -->

















@endsection
