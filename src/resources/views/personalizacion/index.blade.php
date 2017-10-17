@extends('layouts.appp')

@section('content')

    <script type="text/javascript" src="scripts/makeChanges.js"></script>
    <script type="text/javascript" src="scripts/boxover.js"></script>
    <script type="text/JavaScript" src="scripts/colorChooser.js"></script>
    <script type="text/javascript" src="scripts/slider.js"></script>
    <script type="text/javascript" src="scripts/browserDetect.js"></script>

    <!-- MAIN CONTENT -->
    <div id="content">
        <div class="row">
            <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                <h1 class="page-title txt-color-blueDark">


				PERSONALIZACION DE ESTILOS Y DISEÑO
			</span>
                </h1>

                <div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
                    <ul id="sparks" class="">
                        <li class="sparks-info">



                        </li>
                    </ul>
                </div>
            </div>


        </div>

        <!-- widget grid -->
        <section id="widget-grid"  class="">

            <!-- row -->
            <div class="row">


                <article class="col-sm-12 col-md-12 col-lg-6 sortable-grid ui-sortable">

                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget jarviswidget-sortable" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false" role="widget">
                        <!-- widget options:
                        usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

                        data-widget-colorbutton="false"
                        data-widget-editbutton="false"
                        data-widget-togglebutton="false"
                        data-widget-deletebutton="false"
                        data-widget-fullscreenbutton="false"
                        data-widget-custombutton="false"
                        data-widget-collapsed="true"
                        data-widget-sortable="false"

                        -->
                        <header role="heading"><div class="jarviswidget-ctrls" role="menu">   <a href="javascript:void(0);" class="button-icon jarviswidget-toggle-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Collapse"><i class="fa fa-minus "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-fullscreen-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Fullscreen"><i class="fa fa-expand "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-delete-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Delete"><i class="fa fa-times"></i></a></div>
                            <span class="widget-icon"> <i class="fa fa-edit"></i> </span>
                            <h2>Estilos y Diseño </h2>

                            <span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>

                        <!-- widget div-->
                        <div role="content">

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding ">
                                <div class="preview">
                                    <div class="left_col">
                                <form class="smart-form color" action="" onSubmit="personalizacion(); return false" >
                                    <div  id="CLCP" class="CLCP" ></div>
                                    <header>
                                        estilos y diseño
                                    </header>



                                    <fieldset>
                                        <section class="col col-6">
                                            <select id="font_family"  type="select"  style="width:100%" class="select2" class="font_family" name="font" onchange="setFontSize()">
                                                <option>[None]</option>
                                                <option value="Agency FB">Agency FB</option>
                                                <option value="Algerian">Algerian</option>
                                                <option value="Americana">Americana</option>
                                                <option value="Arial">Arial</option>
                                                <option value="BakerSignet">BakerSignet</option>
                                                <option value="Berlin Sans FB">Berlin Sans FB</option>
                                                <option value="Birch">Birch</option>
                                                <option value="Book Antiqua">Book Antiqua</option>
                                                <option value="Bradley Hand ITC">Bradley Hand ITC</option>
                                                <option value="Brush Script MT">Brush Script MT</option>
                                                <option value="Castellar">Castellar</option>
                                                <option value="Centaur">Centaur</option>
                                                <option value="Century Gothic">Century Gothic</option>
                                                <option value="Charlemagne">Charlemagne</option>
                                                <option value="Chiller">Chiller</option>
                                                <option value="Colonna MT">Colonna MT</option>
                                                <option value="Comic Sans MS">Comic Sans MS</option>
                                                <option value="Courier">Courier</option>
                                                <option value="Curlz MT">Curlz MT</option>
                                                <option value="Elephant">Elephant</option>
                                                <option value="Engravers MT">Engravers MT</option>
                                                <option value="Forte">Forte</option>
                                                <option value="Georgia">Georgia</option>
                                                <option value="Goudy">Goudy</option>
                                                <option value="Harrington">Harrington</option>
                                                <option value="High Tower Text">High Tower Text</option>
                                                <option value="Hobo">Hobo</option>
                                                <option value="Impact">Impact</option>
                                                <option value="Jazz Poster ICG">Jazz Poster ICG</option>
                                                <option value="Book Antiqua">Book Antiqua</option>
                                                <option value="Jokerman">Jokerman</option>
                                                <option value="Kaufmann">Kaufmann</option>
                                                <option value="Lucida Handwriting">Lucida Handwriting</option>
                                                <option value="Magneto">Magneto</option>
                                                <option value="Matisse ITC">Matisse ITC</option>
                                                <option value="Mistral">Mistral</option>
                                                <option value="Monotype Corsiva">Monotype Corsiva</option>
                                                <option value="News Gothic">News Gothic</option>
                                                <option value="Poor Richard">Poor Richard</option>
                                                <option value="Ravie">Ravie</option>
                                                <option value="Showcard Gothic">Showcard Gothic</option>
                                                <option value="Tigerteeth ICG">Tigerteeth ICG</option>
                                                <option value="Times New Roman">Times New Roman</option>
                                                <option value="Wide Latin">Wide Latin</option>
                                            </select>
                                        </section>

                                        <section class="col col-6">
                                        <select id="font_size"  type="select"  style="width:100%" class="select2" class="font_family" name="font" onchange="setFontSize()">
                                            <option selected="">Font Size:</option>
                                            <option>[None]</option>
                                            <option value="8pt">8pt</option>
                                            <option value="10pt">10pt</option>
                                            <option value="11pt">11pt</option>
                                            <option value="12pt">12pt</option>
                                            <option value="14pt">14pt</option>
                                            <option value="16pt">16pt</option>
                                            <option value="18pt">18pt</option>
                                            <option value="20pt">20pt</option>
                                            <option value="24pt">24pt</option>
                                            <option value="36pt">36pt</option>
                                            <option value="48pt">48pt</option>
                                            <option value="72pt">72pt</option>
                                        </select>
                                        </section>

                                        <section  class="col col-6">
                                            <select id="font_weight"  type="select"  style="width:100%" class="select2" class="font_family" name="font" onchange="setFontSize()">
                                                <option selected="">Font Weight</option>
                                                <option>[None]</option>
                                                <option value="Regular">Regular</option>
                                                <option value="bold">Bold</option>
                                                <option value="italic">Italic</option>
                                            </select>
                                        </section>

                                        <section  class="col col-6">
                                                <label class="input"/> <i class="icon-append fa fa-user"></i>
                                                <input id="color" name="color" type="color" />
                                        </section>

                                    </fieldset>

                                    <footer>
                                        <button type="submit" class="btn btn-primary" data-dismiss="modal">
                                            CARGAR
                                        </button>

                                    </footer>
                                </form>




                                    </div>
                            <!-- end widget content -->

                        </div>
                        <!-- end widget div -->

                    </div>
                        </div>
                    </div>

                        <!-- end widget -->

                </article>


                <article class="col-sm-12 col-md-12 col-lg-6 sortable-grid ui-sortable">

                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget jarviswidget-sortable" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false" role="widget">
                        <!-- widget options:
                        usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

                        data-widget-colorbutton="false"
                        data-widget-editbutton="false"
                        data-widget-togglebutton="false"
                        data-widget-deletebutton="false"
                        data-widget-fullscreenbutton="false"
                        data-widget-custombutton="false"
                        data-widget-collapsed="true"
                        data-widget-sortable="false"

                        -->
                        <header role="heading"><div class="jarviswidget-ctrls" role="menu">   <a href="javascript:void(0);" class="button-icon jarviswidget-toggle-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Collapse"><i class="fa fa-minus "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-fullscreen-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Fullscreen"><i class="fa fa-expand "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-delete-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Delete"><i class="fa fa-times"></i></a></div>
                            <span class="widget-icon"> <i class="fa fa-edit"></i> </span>
                            <h2>Estilo y Diseño </h2>

                            <span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>

                        <!-- widget div-->
                        <div role="content">

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding ">
                                <div class="preview">
                                    <div class="left_col">
                                        <form class="smart-form color" action="" onSubmit="clearr(); return false" >
                                            <div  id="CLCP" class="CLCP" ></div>
                                            <header>
                                                RESTAURAR ESTILO
                                            </header>



                                            <footer>
                                                <button type="submit" class="btn btn-primary" data-dismiss="modal">
                                                    RESTAURAR
                                                </button>

                                            </footer>
                                        </form>




                                    </div>
                                    <!-- end widget content -->

                                </div>
                                <!-- end widget div -->

                            </div>
                        </div>
                    </div>

                    <!-- end widget -->

                </article>


            </div>

                <!-- WIDGET END -->

            <!-- end row -->

        </section>
        <!-- end widget grid -->

</div>








@endsection

@section('content-scrip')

    <script>

        function clearr(){
            console.log("df")
            sessionStorage.clear('body');

            location.reload();

        }


        function personalizacion(){
            var   font_size= document.getElementById('font_size').value;
            var font_family = document.getElementById('font_family').value;
            var font_weight = document.getElementById('font_weight').value;
            var color = document.getElementById('color').value;


            var body=   "{font-size:"+font_size+"; font-family:"+font_family+", serif ;color:"+color+";font-style:"+font_weight+";}"
            sessionStorage.setItem('body',body);
            body= sessionStorage.getItem('body',body);

            var x = document.createElement("STYLE");
            var t = document.createTextNode("body "+body);
            x.appendChild(t);
            document.head.appendChild(x);
            document.body.style=body;
        }



    </script>
@endsection
