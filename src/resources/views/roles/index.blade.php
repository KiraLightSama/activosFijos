@extends('layouts.appp')

@section('content')

			<div id="content">

				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
						<h1 class="page-title txt-color-blueDark">
							<i class="fa fa-table fa-fw "></i>
								LISTA ->
							<span>
								ROLES
							</span>
						</h1>
					</div>
					<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
						<ul id="sparks" class="">
							<li class="sparks-info">
								@role('admin')

								<a class="btn btn-success" href="{{ route('roles.create') }}"> CREAR NUEVO ROL</a>
								@endrole


							</li>
						</ul>
					</div>
				</div>

				<!-- widget grid -->
				<section id="widget-grid" class="">

					<!-- row -->
					<div class="row">

						<!-- NEW WIDGET START -->
						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

              <div class="jarviswidget jarviswidget-color-darken" id="wid-id-0" data-widget-editbutton="false">
                     <header>
                         <span class="widget-icon"> <i class="fa fa-table"></i> </span>

                         <h2>ROLES</h2>
                     </header>
                     <div>
                         <div class="widget-body no-padding">
                             <div class="table-responsive">
                                 <table class="table table-bordered table-striped table-hover">
                                     <thead>
                                     <tr>
                                       <th>ID</th>
                                       <th>DESCRIPCION</th>
                                       <th>NOMBRE</th>
                                       <th>ACCION</th>

                                     </tr>
                                     </thead>
                                     <tbody>
   												              @foreach ($roles as $key => $role)
   													            <td>{{ ++$i }}</td>
   											                <td>{{ $role->display_name }}</td>
   													            <td>{{ $role->description }}</td>
   												              <td>
   			                                <a class="btn btn-primary" href="{{ route('roles.edit',$role->id) }}">EDITAR</a>

   			                                 {!! Form::open(['method' => 'DELETE','route' => ['roles.destroy', $role->id],'style'=>'display:inline']) !!}
                                         {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
           	                             {!! Form::close() !!}

   											                  </td>
   											                  </tr>
   												                @endforeach
   											                  </tbody>
                                 </table>
                                 {!! $roles->render() !!}
                             </div>
                         </div>
                     </div>
                 </div>


						</article>
						<!-- WIDGET END -->

					</div>


				</section>


			</div>





      @endsection
