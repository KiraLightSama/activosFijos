<!DOCTYPE html>
<html lang="es-es" id="extr-page">

<!-- Mirrored from aimeiyan.me/document/HTML_version/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Apr 2017 15:34:53 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
		<meta charset="utf-8">
		<title> ACTIVO FIJO</title>
		<meta name="description" content="Sistema de Cotizacion">
		<meta name="author" content="Javier Navia">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">


       <!-- #CSS Links -->
       <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/bootstrap.min.css')}}">
       <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/font-awesome.min.css') }}">

       <!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
       <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/smartadmin-production.min.css') }}">
       <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/smartadmin-skins.min.css') }}">


       <link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/your_style.css') }}">
		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<link rel="stylesheet" type="text/css" media="screen" href="{{ asset('/smar/css/demo.min.css') }}">

		<!-- #FAVICONS -->
		<!-- #FAVICONS -->
				<link rel="shortcut icon" href="{{ asset('/smar/img/LOGO.gif') }}" type="image/x-icon">




		<!-- #GOOGLE FONT -->


		<link rel="apple-touch-icon" href="{{ asset('/smar/img/splash/sptouch-icon-iphone.png') }}">
		<link rel="apple-touch-icon" sizes="76x76" href="{{ asset('/smar/img/splash/touch-icon-ipad.png')}}">
		<link rel="apple-touch-icon" sizes="120x120" href="{{ asset('/smar/img/splash/touch-icon-iphone-retina.png') }}">
		<link rel="apple-touch-icon" sizes="152x152" href="{{ asset('/smar/img/splash/touch-icon-ipad-retina.png') }}">

		<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">

		<!-- Startup image for web apps -->
		<link rel="apple-touch-startup-image" href="{{ asset('/smar/img/splash/ipad-landscape.pn') }}" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<link rel="apple-touch-startup-image" href="{{ asset('/smar/img/splash/ipad-portrait.png') }}" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="{{ asset('/smar/img/splash/iphone.png') }}" media="screen and (max-device-width: 320px)">

	</head>



	<body class="animated fadeInDown">

		<header id="header" 	border-radius: 50%>

			<div id="logo-group">

				<img src="{{ asset('/smar/img/logo2.png') }}" alt="SmartAdmin"width="55%"/>

			</div>





		</header>

		<div id="main" role="main">

			<!-- MAIN CONTENT -->
			<div id="content" class="container">

				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-7 col-lg-8 hidden-xs hidden-sm">
						<div class="">
						</br>
							<img src="{{ asset('/smar/img/ActivosFijos_logo.jpg') }}" class="pull-right display-image" alt="5" top="10" width="500"   margin-top: -20px height="300" style="  margin-top: -20px  ;width:100% ;">

							<div class="pull-left login-desc-box-l">

							</div>


						</div>


					</div>
					<div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
						<div class="well no-padding">
								<form class="smart-form client-form" role="form" method="POST" id="login-form"  action="{{ url('/login') }}"  >
									{{ csrf_field() }}

								<header>
									INICIAR SESIÓN
								</header>

								<fieldset>

									<section>
										<label class="label">CORREO</label>
										<label class="input"> <i class="icon-append fa fa-user"></i>
											<input type="email" name="email">
											@if ($errors->has('email'))
													<span class="help-block">
															<strong>{{ $errors->first('email') }}</strong>
													</span>
											@endif
											<b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i>CORREO ELECTRÓNICO</b></label>
									</section>

									<section>
										<label class="label">CONTRASEÑA</label>
										<label class="input"> <i class="icon-append fa fa-lock"></i>
											<input type="password" name="password">
											@if ($errors->has('password'))
													<span class="help-block">
															<strong>{{ $errors->first('password') }}</strong>
													</span>
											@endif
											<b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i>INGRESE SU CONTRASEÑA</b> </label>
										<div class="note">
											<a class="btn btn-link" href="{{ url('/password/reset') }}">
												OLVIDO SU CONTRASEÑA?
											</a>
											{{ csrf_field() }}

										</div>
									</section>


								</fieldset>
								<footer>
									<button type="submit" class="btn btn-primary">
										INGRESAR
									</button>
								</footer>
							</form>


				</div>
			</div>

		</div>
	</div>


	        <!-- PAGE FOOTER -->
	        		<div class="page-footer">
	        			<div class="row">
	        				<div class="col-xs-12 col-sm-6">
	        					<span class="txt-color-white">sistema de informacion II <span class="hidden-xs"> - Activos fijos </span> © 2017</span>
	        				</div>

	        				<div class="col-xs-6 col-sm-6 text-right hidden-xs">
	        					<div class="txt-color-white inline-block">
	        						<i class="txt-color-blueLight hidden-mobile">Desarrollado por: <i class="fa fa-clock-o"></i> <strong>Grupo 5&nbsp;</strong> </i>
	        								</ul>
	        						</div>
	        					</div>
	        				</div>
	        			</div>
	        		<!-- END PAGE FOOTER -->



	</div>
		<!--================================================== -->
		<script src="{{ asset('/smar/js/plugin/pace/pace.min.js') }}"></script>

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
	    <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
		<script> if (!window.jQuery) { document.write('<script src="{{ asset('/smar/js/libs/jquery-2.0.2.min.js') }}"><\/script>');} </script>

		<script> if (!window.jQuery.ui) { document.write('<script src="{{ asset('/smar/js/libs/jquery-ui-1.10.3.min.js') }}"><\/script>');} </script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->
		<script src="{{ asset('/smar/js/bootstrap/bootstrap.min.js') }}"></script>

		<!-- JQUERY VALIDATE -->
		<script src="{{ asset('/smar/js/plugin/jquery-validate/jquery.validate.min.js') }}"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="{{ asset('/smar/js/plugin/masked-input/jquery.maskedinput.min.js') }}"></script>

		<!--[if IE 8]>

			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->
		<script src="{{ asset('/smar/js/app.min.js') }}"></script>

		<!-- MAIN APP JS FILE -->

		<script type="text/javascript">
			runAllForms();

			$(function() {
				// Validation
				$("#login-form").validate({
					// Rules for form validation
					rules : {
						email : {
							required : true,
							email : true
						},
						password : {
							required : true,
							minlength : 3,
							maxlength : 20
						}
					},

					// Messages for form validation
					messages : {
						email : {
							required : 'Please enter your email address',
							email : 'Please enter a VALID email address'
						},
						password : {
							required : 'Please enter your password'
						}
					},

					// Do not change code below
					errorPlacement : function(error, element) {
						error.insertAfter(element.parent());
					}
				});
			});
		</script>

	</body>

<!-- Mirrored from aimeiyan.me/document/HTML_version/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Apr 2017 15:34:59 GMT -->
</html>
