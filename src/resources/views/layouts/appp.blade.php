<!DOCTYPE html>
<html lang="es-es">


@include('layouts.content.head')
@yield('content-css')

   <body class="">

     @include('layouts.content.header')
     <script>
       var body=  sessionStorage.getItem('body');

       var x = document.createElement("STYLE");
       var t = document.createTextNode("body "+body);
       x.appendChild(t);
       document.head.appendChild(x);
       document.body.style=body;
     </script>

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
