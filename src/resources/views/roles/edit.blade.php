@extends('layouts.appp')

@section('content')
            <!-- MAIN CONTENT -->
            <div id="content">

                <div class="row">
                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                        <h1 class="page-title txt-color-blueDark">
                            <i class="fa fa-table fa-fw "></i>
                                ROL
                            <span>
                        CREAR ROLES
                            </span>
                        </h1>
                    </div>

                </div>

                <!-- widget grid -->
                <section id="widget-grid" class="">

                    <!-- row -->
                    <div class="row">

                        <!-- NEW WIDGET START -->
                        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                            <!-- Widget ID (each widget will need unique ID)-->
                            <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">
                                <!-- widget options:
                                usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

                                data-widget-colorbutton="false"
                                data-widget-editbutton="false"
                                data-widget-togglebutton="false"
                                data-widget-deletebutton="false"
                                data-widget-fullscreenbutton="false"
                                data-widget-custombutton="false"
                                data-widget-collapsed="true"
                                data-widget-sortable="false"

                                -->
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
            <strong>Whoops!</strong> NECESARIO PARA ENTRAR EN EL SITIO WEB.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
                    <!-- widget content -->
                    <div class="widget-body no-padding">



               {!! Form::open(array('route' => ['roles.update', $role->id],'method'=>'PATCH' ,'id'=>'smart-form-register','class'=>'smart-form')) !!}
	{!! Form::model($role, ['method' => 'PATCH','route' => ['roles.update', $role->id]]) !!}
  {{ csrf_field() }}

                            <header>
                              CREAR NUEVO ROL
                             </header>


                            <fieldset>
                            <section>
                                    <label class="input"> <i class="icon-append fa fa-user"></i>
                                         {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control','style'=>'text-transform:uppercase')) !!}
                                        <b class="tooltip tooltip-bottom-right">NECESARIO PARA ENTRAR EN EL SITIO WEB</b> </label>
                                </section>

                                <section>
                                    <label class="input"> <i class="icon-append fa fa-user"></i>
                                         {!! Form::text('display_name', null, array('placeholder' => 'Name','class' => 'form-control' ,'style'=>'text-transform:uppercase')) !!}
                                        <b class="tooltip tooltip-bottom-right">NECESARIO PARA ENTRAR EN EL SITIO WEB</b> </label>
                                </section>

                                 <section>
                                    <label class="input"> <i class="icon-append fa fa-user"></i>

                                         {!! Form::textarea('description', null, array('placeholder' => 'Description','class' => 'form-control','style'=>'text-transform:uppercase')) !!}
                                        <b class="tooltip tooltip-bottom-right">NECESARIO PARA ENTRAR EN EL SITIO WEB</b> </label>
                                </section>

                                <section>
                                  <div class="form-group">
                                    <label>SELECCIONAR MULTIPLES ROLES</label>
                                    <select  name="permission[]" type="select" multiple style="width:100%" class="select2">
                                      <optgroup label="SELECCIONAR ROLES">
                                        @foreach ($permission as $key => $permisio)
                                         <option value="{{$permisio->id}}" @if(in_array($permisio->id,$rolePermissions,true)) selected="selected" @endif >
                                           {{$permisio->display_name }}
                                         </option>

                                        @endforeach
                                      </optgroup>
                                    </select>
                                  </div>
                                </section>

                    </fieldset>




                            <footer>
                                <button type="submit" class="btn btn-primary">
                                  GUARDAR
                                </button>
                            </footer>
                            {!! Form::close() !!}

                    </div>
                    <!-- end widget content -->


                                </div>
                                <!-- end widget div -->

                            </div>
                            <!-- end widget -->


                            <!-- end widget -->


                            <!-- end widget -->

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
