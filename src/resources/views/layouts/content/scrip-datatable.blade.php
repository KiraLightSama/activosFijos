
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


	  <!--关于dataTables插件的应用可以查看http://legacy.datatables.net-->
	<script src="./smar/js/plugin/datatables/dataTables.bootstrap.min.js"></script>
	<script src="./smar/js/plugin/datatable-responsive/datatables.responsive.min.js"></script>


	<script type="text/javascript">
	    $(document).ready(function () {

	        pageSetUp();

	        /* // DOM Position key index //

	         l - Length changing (dropdown)
	         f - Filtering input (search)
	         t - The Table! (datatable)
	         i - Information (records)
	         p - Pagination (paging)
	         r - pRocessing
	         < and > - div elements
	         <"#id" and > - div with an id
	         <"class" and > - div with a class
	         <"#id.class" and > - div with an id and class

	         Also see: http://legacy.datatables.net/usage/features
	         */

	        /* BASIC ;*/
	        var responsiveHelper_dt_basic = undefined;
	        var responsiveHelper_datatable_fixed_column = undefined;
	        var responsiveHelper_datatable_col_reorder = undefined;
	        var responsiveHelper_datatable_tabletools = undefined;

	        var breakpointDefinition = {
	            tablet: 1024,
	            phone: 480
	        };

	        $('#dt_basic').dataTable({
						
				 dom: 'Bfrtipi ',
				 "paging":   true,
				"ordering": true,
	      //  "info":     false,
	         dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf',


					   {
	                extend: 'print',
	                 text: 'imprimir',

	                   message: 'impresiomiendo :)',

	                  title: 'impresion de datos'


	            }


			],

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

	        /* END BASIC */

	        /* COLUMN FILTER  */
	        var otable = $('#dt_basic').DataTable({
	            //"bFilter": false,
	            //"bInfo": false,
	            //"bLengthChange": false
	            //"bAutoWidth": false,
	            //"bPaginate": false,
	            //"bStateSave": true // saves sort state using localStorage
	            retrieve: true,
	            "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'f><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>" +
	                    "t" +
	                    "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
	            "autoWidth": true,
	            "preDrawCallback": function () {
	                // Initialize the responsive datatables helper once.
	                if (!responsiveHelper_datatable_fixed_column) {
	                    responsiveHelper_datatable_fixed_column = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
	                }
	            },
	            "rowCallback": function (nRow) {
	                responsiveHelper_datatable_fixed_column.createExpandIcon(nRow);
	            },
	            "drawCallback": function (oSettings) {
	                responsiveHelper_datatable_fixed_column.respond();
	            }

	        });

	        // Apply the filter
	        $("#dt_basic thead th input[type=text]").on('keyup change', function () {

	            otable
	                    .column($(this).parent().index() + ':visible')
	                    .search(this.value)
	                    .draw();

	        });
	        /* END COLUMN FILTER */

	    })

	</script>
