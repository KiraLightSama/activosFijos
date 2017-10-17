@extends('layouts.appp')

@section('content')

			<div id="content">

				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
						<h1 class="page-title txt-color-blueDark">
							<i class="fa fa-table fa-fw "></i>
								LISTA
							<span>>
								<b> USUARIOS</b>
							</span>
						</h1>
					</div>
					<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
						<ul id="sparks" class="">

							<a class="btn btn-success" href="{{ route('users.create') }}"> CREAR NUEVO USUARIO</a>
							{{ csrf_field() }}

							<li class="sparks-info">
							</li>
						</ul>
					</div>
				</div>

				<!-- widget grid -->
				<section id="widget-grid"  class="">

					<!-- row -->
					<div class="row">

						<!-- NEW WIDGET START -->
						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

              <div class="jarviswidget jarviswidget-color-blueDark"  id="wid-id-0" data-widget-editbutton="false">
                     <header>
                         <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                         <h2>USUARIOS</h2>
                     </header>
                     <div>
                         <div class="widget-body no-padding">
                             <div class="table-responsive">
                                 <table class="table table-bordered table-striped table-hover">
                                     <thead>
                                     <tr>
                                       <th>ID</th>
                                       <th>NOMBRE</th>

                                       <th>CORREO</th>

																			 <th>ESTADO</th>

                                       <th>ROL</th>
                                       <th>ACCION</th>
                                     </tr>
																			 </th>
                                     </thead>
                                     <tbody>

                                       @foreach ($data as $key => $user)

                                      <tr>
                                      <td>{{ ++$i }}</td>
                                        <td>
											 <a  href=""> {{ $user->name }}</a>
										 </td>
										 <td>
											 <a  href=""> {{ $user->email }}</a>
										 </td>
										 <td>

											@if($user->status==1)
											<label  class="label label-success ">ACTIVADO</label>
											@else
											<label  class="label label-warning">DESACTIVADO</label>
											@endif
										</td>

                                        <td>
                                        @foreach($user->roles as $v)
                                        <label class="label label-info">{{ $v->display_name }}</label>
                                        @endforeach
                                        </td>
                                        <td>
                                          <a class="btn btn-primary" href="{{ route('users.edit',$user->id) }}">edit</a>
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
