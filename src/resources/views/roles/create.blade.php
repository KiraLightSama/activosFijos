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
                                        <strong>Whoops!</strong>TUVIMOS UN PROBLEMA, INTENTA NUEVAMENTE<br><br>
                                        <ul>
                                          @foreach ($errors->all() as $error)
                                          <li>{{ $error }}</li>
                                          @endforeach
                                        </ul>
                                      </div>
                                      @endif
                    <!-- widget content -->
                            <div class="widget-body no-padding">



                      {!! Form::open(array('route' => 'roles.store','method'=>'POST' ,'id'=>'smart-form-register','class'=>'smart-form')) !!}
                      {{ csrf_field() }}

                            <header>
                             crear nuevo rol
                             </header>

                            <fieldset>
                                <section>
                                    <label class="input"> <i class="icon-append fa fa-user"></i>
                                        <input type="text" name="name" placeholder="Name" style="text-transform:uppercase" >
                                        <b class="tooltip tooltip-bottom-right">Needed to enter the website</b> </label>
                                </section>

                                 <section>
                                    <label class="input"> <i class="icon-append fa fa-user"></i>
                                        <input type="text" name="display_name" placeholder="nombre completo" style="text-transform:uppercase" >
                                        <b class="tooltip tooltip-bottom-right">Needed to enter the website</b> </label>
                                </section>

                                <section>
                                    <label class="input"> <i class="icon-append fa fa-user"></i>
                                         {!! Form::textarea('description', null, array('placeholder' => 'Description','class' => 'form-control','style'=>'height:100px')) !!}
                                        <b class="tooltip tooltip-bottom-right">NECESARIO PARA ENTRAR EN EL SITIO WEB</b> </label>
                                </section>

                                <section>
                                  <div class="form-group">
                                    <label>Seleciones los multiples roles</label>
                                    <select  name="permission[]" type="select" multiple style="width:100%" class="select2">
                                      <optgroup label="Selecone Los Roles">

                                        @foreach ($permission as $key => $permisio)
                                        <option  value="{{$permisio->id}}">{{$permisio->display_name }}</option>
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

                        </article>
                        <!-- WIDGET END -->

                    </div>

                </section>
                <!-- end widget grid -->

            </div>

















@endsection
