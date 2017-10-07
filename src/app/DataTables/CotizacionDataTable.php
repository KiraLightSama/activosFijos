<?php

namespace App\DataTables;

use App\Cotizacion;
use Yajra\Datatables\Services\DataTable;

class CotizacionDataTable extends DataTable
{
    /**
     * Display ajax response.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function ajax()
    {
        return $this->datatables
            ->eloquent($this->query())
            ->make(true);
    }

    /**
     * Get the query object to be processed by dataTables.
     *
     * @return \Illuminate\Database\Eloquent\Builder|\Illuminate\Database\Query\Builder|\Illuminate\Support\Collection
     */
    public function query()
    {
        $cotizacion = User::query();

        return $this->applyScopes($cotizacion);
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\Datatables\Html\Builder
     */
    public function html()
    {
      return $this->builder()



       ->columns([
           'codigo','sector','sector','cliente','estado','modelo','cantidad','precio','comentario','created_at' ,'user_id',

       ])
       ->parameters([
           'dom' => 'Bfrtip',
           'buttons' => ['csv', 'excel', 'pdf', 'print', 'reset', 'reload'],
       ]);
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {

    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'cotizaciondatatables_' . time();
    }
}
