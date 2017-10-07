

<div class="alert alert-block alert-success">
    <a class="close" data-dismiss="alert" href="#">×</a>
    <h4 class="alert-heading"><i class="fa fa-check-square-o"></i> Notificacion Ingrece UFV !</h4>
    <p>
        Antes de Ingresar al Sistema de Registro de Activos Por Favor Ingrese el UFV Actual
    </p>
</div>

<div class="widget-body no-padding">
    {!! Form::open(array('route' => 'tipodecambio.store','method'=>'POST' ,'id'=>'smart-form-register','class'=>'smart-form')) !!}
    <fieldset>
        <section >
            <label class="input"> <i class="icon-append fa fa-user"></i>
                <input type="number" min="1"  step="any"  name="valor" placeholder="Ingrese UFV " style="text-transform:uppercase">
            </label>
        </section>

        <footer>
            <button type="submit" class="btn btn-primary">
                <i class="fa fa-save"></i>
                GUARDAR
            </button>
        </footer>
        {!! Form::close() !!}
    </fieldset>
</div>
