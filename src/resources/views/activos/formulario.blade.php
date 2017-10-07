


<!-- widget content -->
<div class="widget-body no-padding">
    {!! Form::open(array('route' => 'activo.store','method'=>'POST' ,'id'=>'smart-form-register','class'=>'smart-form')) !!}

    <header>
        CREAR NUEVO ACTIVO
    </header>

    <fieldset>
        <section >



            <label class="input"> <i class="icon-append fa fa-user"></i>
                <input type="text" name="descripcion" placeholder="nombre " style="text-transform:uppercase">
                <b class="tooltip tooltip-bottom-right">NECESARIO PARA ENTRAR EN EL SITIO WEB</b> </label>
        </section>

        <section >
            <label class="input"> <i class="icon-append fa fa-envelope-o"></i>
                <input type="text" name="valoradquirido" placeholder="valor " style="text-transform:uppercase">
                <b class="tooltip tooltip-bottom-right">Necesario para verificar su cuenta</b> </label>
        </section>

        <section >
            <div class="form-group">
                <label>SELECCIONAR MONEDA</label>
                <select  name="moneda" type="select"  style="width:100%" class="select2">
                    <optgroup label="SELECCIONAR MONEDA">
                        <option value="BOLIVIANOS">BOLIVIANOS</option>
                        <option value="DOLARES">DOLARES</option>
                    </optgroup>
                </select>
            </div>
        </section>

        <section>
            <div class="form-group">
                <label>SELECCIONAR CALIFICACION</label>
                <select  name="calificacion" type="select"  style="width:100%" class="select2">
                    <optgroup label="SELECCIONAR CALIFICACION">
                        <option value="NUEVO">NUEVO</option>
                        <option value="BUENO">BUENO</option>
                        <option value="REGULAR">REGULAR</option>
                        <option value="MALO">MALO</option>
                    </optgroup>
                </select>
            </div>
        </section>



        <section >
            <label class="input"> <i class="icon-append fa fa-envelope-o"></i>
                <input type="number" min="1"  step="any" name="tipocambio" value="{{$tipoCambios->valor}}" placeholder="valor" readonly style="text-transform:uppercase">
            </label>
        </section>

        <section>
            <div class="form-group">
                <label>SELECCIONAR AREA</label>
                <select  name="area" type="select"  style="width:100%" class="select2">
                    <optgroup label="SELECCIONAR AREA">
                        @foreach ($areas as $key => $area)
                            <option value="{{$area->id}}">{{$area->nombre }}</option>
                        @endforeach
                    </optgroup>
                </select>
            </div>
        </section>
        <section>
            <div class="form-group">
                <label>SELECCIONAR PROVEEDOR</label>
                <select  name="proveedor" type="select"  style="width:100%" class="select2">
                    <optgroup label="SELECCIONAR  PROVEEDOR">
                        @foreach ($proveedores as $key => $proveedor)
                            <option value="{{$proveedor->id}}">{{$proveedor->empresa }}- {{$proveedor->nombre }}</option>
                        @endforeach
                    </optgroup>
                </select>
            </div>
        </section>

        <section>
            <div class="form-group">
                <label>SELECCIONAR GRUPO</label>
                <select  name="grupo" type="select"  style="width:100%" class="select2">
                    <optgroup label="SELECCIONAR  GRUPO">
                        @foreach ($grupos as $key => $grupo)
                            <option value="{{$grupo->id}}">{{$grupo->nombre }}</option>
                        @endforeach
                    </optgroup>
                </select>
            </div>
        </section>


    </fieldset>
    <footer>
        <button type="submit" class="btn btn-primary">
            <i class="fa fa-save"></i>
            GUARDAR
        </button>
    </footer>
    {!! Form::close() !!}

</div>

