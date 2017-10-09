<!DOCTYPE html>
<html lang="es-es">


@include('layouts.content.head')
@yield('content-css')

   <body class="">

     @include('layouts.content.header')

º
     @include('layouts.content.aside')

     <div id="main" role="main">

       <!--RIBBON -->
       <div id="ribbon">
         <span class="ribbon-button-alignment">

         </span>

           <!-- breadcrumb -->
           <ol class="breadcrumb">
              <li>
             @role('admin')
             <a> ADMINISTRADOR</a>
               @else
                 <a>VENDEDOR</a>
              @endrole
               </li>
           </ol>
           <!-- end breadcrumb -->
       </div>
       <!-- END RIBBON -->

       @yield('content')

       <!-- END MAIN CONTENT -->

     </div>

     @include('layouts.content.footer')
     @include('layouts.content.script')
     @yield('content-scrip')
 </body>
</html>
