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
                                  <h2>PROVEEDORES</h2>

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
                        {!! Form::open(array('route' => ['areas.update', $areas->id],'method'=>'PATCH' ,'id'=>'smart-form-register','class'=>'smart-form')) !!}
                        {!! Form::model($areas, ['method' => 'PATCH','route' => ['areas.update', $areas->id]]) !!}
                        {{ csrf_field() }}
                        <header>
                            CREAR NUEVO SUCURSAL
                         </header>

                        <fieldset>
                            <section>
                                <label class="input"> <i class="icon-append fa fa-user"></i>
                                    <input type="text" name="nombre" placeholder="NOMBRE DE LA SUCURSAL" value="{{$areas->nombre}}" style="text-transform:uppercase">
                                    <b class="tooltip tooltip-bottom-right">Ingrese el nombre completo del proveedor</b> </label>
                            </section>
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
