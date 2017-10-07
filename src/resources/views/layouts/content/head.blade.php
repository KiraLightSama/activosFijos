<head>
   <meta charset="utf-8">
   <title>COTIZACIONES </title>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="renderer" content="webkit">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
   <meta name="description" content="SISTEMA DE COTIZACION">
   <meta name="author" content="DEVELOPERS SOFTWARE IT">
   <meta name="csrf-token" content="{{ csrf_token() }}">

   <!-- #CSS Links -->
   <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/bootstrap.min.css')}}">
   <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/font-awesome.min.css') }}">

   <!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
   <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/smartadmin-production.min.css') }}">
   <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/smartadmin-skins.min.css') }}">

   <link rel="shortcut icon" href="{{ asset('/smar/img/cat/logo.bmp') }}" type="image/x-icon">

   <link rel="icon" href="{{ asset('/smar/img/LOGO.gif') }}" type="image/x-icon">

   <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/your_style.css') }}">
<!--link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"!-->
<!--link type="text/css" href="https://cdn.datatables.net/buttons/1.1.2/css/buttons.dataTables.min.css" rel="stylesheet"!-->


   <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
   <meta name="apple-mobile-web-app-capable" content="yes">
   <meta name="apple-mobile-web-app-status-bar-style" content="black">

   <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
  <!--link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" /!-->
  <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>

</head>
