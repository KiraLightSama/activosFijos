@extends('layouts.appp')

@section('content')

			<div id="content">

				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
						<h1 class="page-title txt-color-blueDark">
							<i class="fa fa-table fa-fw "></i>
								LISTA
							<span>>
								<b> ACTIVOS</b>
							</span>
						</h1>
					</div>
					<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
						<ul id="sparks" class="">

							<a class="btn btn-success" href="{{ route('activo.create') }}"> CREAR NUEVO ACTIVO</a>
							{{ csrf_field() }}

							<li class="sparks-info">
							</li>
						</ul>
					</div>
				</div>

				<!-- widget grid -->
				<section  class="">

					<!-- row -->
					<div class="row">

						<!-- NEW WIDGET START -->
						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

              <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">
                     <header>
                         <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                         <h2>ACTIVOS </h2>
                     </header>
                     <div>
                         <div class="widget-body no-padding">
                             <div class="table-responsive">
                                 <table class="table table-bordered table-striped table-hover">
                                     <thead>
                                     <tr>
                                       <th>CODIGO</th>
                                       <th>DESCRIPCION</th>
                                       <th>PRECIO</th>
                                       <th>FECHA COMPRA</th>
                                       <th>CALIFICACION</th>
                                       <th>AREA</th>
                                        <th>EMPRESA</th>
                                        <th>GRUPO </th>

                                     </tr>
                                     </th>
                                     </thead>
                                     <tbody>

                                       @foreach ($activos as $key => $activo)

                                      <tr>
                                        <td>{{ $activo->codigo }}</td>
                                        <td>
                                             {{ $activo->descripcion }}
                                         </td>
                                         <td>
                                            {{ $activo->precio }} - {{ $activo->moneda}}
                                         </td>
                                         <td>
                                           {{ $activo->fechaCompra }}
                                        </td>

                                        <td>
                                          {{ $activo->calificacion }}

                                        </td>
                                        <td>
                                          {{ $activo->area }}
                                        </td>
                                        <td>
                                          {{ $activo->empresa }}
                                        </td>
                                        <td>
                                          {{ $activo->grupo }}
                                        </td>
                                        </tr>
                                        @endforeach
                                     </tbody>
                                 </table>
                             </div>
                         </div>
                     </div>
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
