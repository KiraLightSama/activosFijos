@extends('layouts.appp')




@section('content')

@section('content-css')
    <!--link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"!-->
    <link type="text/css" href="https://cdn.datatables.net/buttons/1.1.2/css/buttons.dataTables.min.css" rel="stylesheet">

@endsection

<div id="content">

    <div class="row">
        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
            <h1 class="page-title txt-color-blueDark">
                <i class="fa fa-table fa-fw "></i>
                LISTA DE BITACORA

            </h1>
        </div>
    </div>


</div>

<!-- widget grid -->
<section  id="widget-grid"  class="">

    <!-- row -->
    <div class="row">

        <!-- NEW WIDGET START -->
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

            <div class="jarviswidget jarviswidget-color-darken" id="wid-id-10" data-widget-editbutton="false">


                <header>
                    <span class="widget-icon"> <i class="fa fa-table"></i> </span>

                    <h2>CLIENTES</h2>
                </header>

                <div>
                    <div class="widget-body no-padding">

                        <table id="dt_basic" class="table table-striped table-bordered table-hover" width="100%">
                            <thead>
                            </br>



                            <tr>
                                <th class="non_searchable"  data-hide="phone">
                                    ID
                                </th>

                                <th data-hide="phone">
                                    CORREO
                                </th>
                                <th data-class="expand" >
                                    NOMBRE
                                </th>
                                <th>
                                    ACCION
                                </th>
                                <th>
                                    MAVEGADOR
                                </th>
                                <th>
                                    URL
                                </th>
                                <th>
                                    FECHA
                                </th>



                            </tr>
                            </thead>
                            <tfoot style="display: table-header-group;">
                            <tr>
                                <th class="non_searchable"  data-hide="phone">
                                    ID
                                </th>

                                <th data-hide="phone">
                                    CORREO
                                </th>
                                <th data-class="expand" >
                                    NOMBRE
                                </th>
                                <th>
                                    ACCION
                                </th>
                                <th>
                                    MAVEGADOR
                                </th>
                                <th>
                                    URL
                                </th>
                                <th>
                                    FECHA
                                </th>
                            </tr>
                            </tfoot>
                            <tbody>

                            @foreach ($bitacoras as $key => $bitacora)

                                <tr>
                                    <td>{{ $bitacora->id }}</td>
                                    <td>
                                        {{ $bitacora->Correo }}
                                    </td>
                                    <td>
                                        {{ $bitacora->Nombre }}
                                    </td>
                                    <td>

                                        {{ $bitacora->Accion }}

                                    </td>
                                    <td>

                                        {{ $bitacora->Navegador }}

                                    </td>
                                    <td>

                                        {{ $bitacora->Url }}

                                    </td>
                                    <td>

                                        {{ $bitacora->fecha }}

                                    </td>



                                </tr>
                            @endforeach
                            </tbody>



                        </table>

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


@section('content-scrip')

    <script type="text/javascript" src="https://cdn.datatables.net/tabletools/2.2.4/js/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/tabletools/2.2.2/swf/copy_csv_xls_pdf.swf"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.flash.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.print.min.js"></script>



    <script src="	{{ asset('./smar/js/plugin/datatables/dataTables.bootstrap.min.js') }}"></script>
    <script src="	{{ asset('./smar/js/plugin/datatable-responsive/datatables.responsive.min.js') }}"></script>

    <script type="text/javascript" src="https://cdn.datatables.net/plug-ins/1.10.15/sorting/date-dd-MMM-yyyy.js"></script>



    <script type="text/javascript">




        $(document).ready(function () {

            pageSetUp();


            var responsiveHelper_dt_basic = undefined;
            var responsiveHelper_datatable_fixed_column = undefined;
            var responsiveHelper_datatable_col_reorder = undefined;
            var responsiveHelper_datatable_tabletools = undefined;

            var breakpointDefinition = {
                tablet: 1024,
                phone: 480
            };

            $('#dt_basic').dataTable({

                responsive: true ,



                ////////////////////////////////

                buttons: [
                    {
                        extend: "copy",
                        title: "COTIZACION  -  LISTA DE CLIENTES",
                        exportOptions: {  columns: ':visible' },
                        footer:true,
                        exportOptions: {
                            columns: [ 1, 2, 3, 4, 5, 6]
                        }
                    },

                    {
                        extend: "csv",
                        title: "COTIZACION  -  LISTA DE CLIENTES",
                        exportOptions: {  columns: ':visible' },
                        footer:true,
                        exportOptions: {
                            columns: [ 1, 2, 3, 4, 5, 6]
                        }
                    },

                    {
                        extend: "excel",
                        title: "COTIZACION  -  LISTA DE CLIENTES",

                        exportOptions: {  columns: ':visible' },
                        footer:true,
                        exportOptions: {
                            columns: [ 1, 2, 3, 4, 5, 6]
                        }
                    },
                    {
                        extend: "pdf",
                        title: "COTIZACION  -  LISTA DE CLIENTES",
                        exportOptions: {  columns: ':visible' },
                        footer:true,
                        orientation:'landscape',
                        exportOptions: {

                            columns: [ 1, 2, 3, 4, 5, 6]
                        }
                    },
                    {
                        extend: "print",
                        title: "COTIZACION  -  LISTA DE CLIENTES",
                        exportOptions: {  columns: ':visible' },
                        footer:true,
                        exportOptions: {
                            columns: [ 1, 2, 3, 4, 5, 6]
                        }
                    },
                    {
                        text: 'Reload',
                        action: function ( e, dt, node, config ) {
                            dt.ajax.reload();
                        },

                    }

                ],
                "aLengthMenu": [[10,25, 50, 75, -1], [10,25, 50, 75, "All"]],
                dom: 'Blfrt'+	"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                // ThemeRoller-stöd

                //	"dom": 'B<lf<t>ip>',



                "oLanguage": {
                    "sLoadingRecords"  : "Cargando...",
                    //  "sSearch"     : "Buscar:",
                    "sZeroRecords": "No se encontraron resultados",
                    "sProcessing":     "Procesando...",
                    //     "sLengthMenu":     "Mostrar _MENU_ registros",
                    "sEmptyTable":     "Ningún dato disponible en esta tabla",
                    "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix":    "",
                    "sUrl":            "",
                    "sInfoThousands":  ",",
                    "oPaginate": {
                        "sFirst":    "Primero",
                        "sLast":     "Último",
                        "sNext":     "Siguiente",
                        "sPrevious": "Anterior"
                    }   ,},


                initComplete: function () {
                    this.api().columns().every(function () {
                        var column = this;
                        var columnClass = column.footer().className;
                        if(columnClass != 'non_searchable'){
                            var input = document.createElement("input");
                            $(input).appendTo($(column.footer()).empty())
                                .on('change', function () {
                                    column.search($(this).val(), false, false, true).draw();
                                });
                        }
                        else{

                        }
                    });
                    this.api().buttons().container()
                        .appendTo( $('#example_wrapper .col-sm-6:eq(10)'));
                },



                "autoWidth": true,

                "preDrawCallback": function () {
                    // Initialize the responsive datatables helper once.
                    if (!responsiveHelper_dt_basic) {
                        responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
                    }
                },
                "rowCallback": function (nRow) {
                    responsiveHelper_dt_basic.createExpandIcon(nRow);
                },
                "drawCallback": function (oSettings) {
                    responsiveHelper_dt_basic.respond();
                }





            });


        });

    </script>

@endsection
