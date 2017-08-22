<!DOCTYPE html>
<html lang="en">
  

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EventNix| Register</title>

    <!-- Bootstrap -->
	<script src="js/pace.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/theme.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/semantic.min.css"/>
	<!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/bootstrap.min.css"/>
	<link href="
https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">


	<link href="client/fine-uploader-new.css" rel="stylesheet">
	<link href="css/uploadFile.css" rel="stylesheet">
	<!-- Fine Uploader JS file
    ====================================================================== -->
	<script src="client/fine-uploader.js"></script></head>
  <body>
	<div class="container" id="container" style="display:none;">
		<header>
			<!-- Main comapny header -->
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			  <div class="container">
				<div class="navbar-header">
				  <a class="navbar-brand top-navbar-brand" href="#">Furahia</a>
				</div>
			  </div>
			</nav>
		</header>
		<section id="form">
			<div class="container">    
				<div id="registertext" class="mainbox col-xs-12 col-sm-6">  
					<div class="jumbotron black-alpha-90 animated fadeInLeft">
						<h2>Support a Child in Needd through <b><i>Furahia</i></b></h2>
						<p>Make an Impact in a Child's Life: </p>
						<ol type="1">
						<li>Register with us</li>
						<li>Login</li>
						<li>Browse the moving stories and select a child to support</li>
							<li>Pledge, pay any amount and change the life of a child in need</li>
						</ol>
					</div>
				</div>
				<div id="loginbox" class="mainbox col-xs-12 col-sm-6 animated zoomInDown">
					<div id="register-form"  >
						<!--Base app sets the form in this section of the page-->
					</div>
				<%--					<div class="panel white-alpha-90" >
						<div class="panel-heading">
							<div class="panel-title text-center"><h2>Sign In to <span class="text-primary">Furahia</span></h2></div>
						</div>     
						<div class="panel-body" >
							<div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

						</div>
					</div>  
				</div>--%>
			</div>
		</section>

		<footer>
			<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
			  <div class="container text-center">
				<div class="footer-content">
				  Already registered? <a href="login.jsp" class="btn btn-primary"> Sign In </a>
				</div>
			  </div><!-- /.container-fluid -->
			</nav>
		</footer>
	</div>

	<script src="//cdn.jsdelivr.net/alertifyjs/1.8.0/alertify.min.js"></script>
	<script src="js/Furahia/base-app.js"></script>
	<script src="js/Furahia/registration.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.backstretch.min.js"></script>
	<script>
		Pace.on('hide', function(){
		  $("#container").fadeIn('1000');
		  $.backstretch([
				"images/login/furahia1.jpg"
			], {duration: 5000, fade: 1000});
		});		
	</script>
  </body>
</html>