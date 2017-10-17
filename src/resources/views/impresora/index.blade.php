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
                    <a href="javascript:imprSelec('muestra')">
                        <button type="button" class="btn btn-success">Success</button>
                        <br>
                        <div id="muestra">

                            <img  src={{ asset('./images/impresion.png') }} width="" height="" alt="" />
                        </div>
                        <br>
                        <br>
                    </a>
                    <br>
                </article>




            </div>

            <!-- WIDGET END -->

            <!-- end row -->

        </section>
        <!-- end widget grid -->

    </div>



        <script type="text/javascript">
            function imprSelec(muestra)
            {
                var ficha=document.getElementById(muestra);
                var ventimp=window.open(' ','popimpr');
                ventimp.document.write(ficha.innerHTML);
                ventimp.document.close();ventimp.print();
                ventimp.close();
            }
    </script>




@endsection

