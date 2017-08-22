<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EventNix</title>

    <!-- Bootstrap -->
    <script src="js/pace.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/theme.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/alertify.min.css"/>
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/default.min.css"/>
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/semantic.min.css"/>
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/bootstrap.min.css"/>
    <link href="css/animate.css" rel="stylesheet">
    <link href="
https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">
</head>

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
    <section id="form" class="animated fadeInDown">
        <div class="container">
            <div class="row"><div class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 text-center">
                <div class="panel"><div class="panel-heading">
                <h3 class="panel-title">Username and password do not match</h3>
                    <h5 class="panel-title">Login  again</h5></div>
                </div>
                  </div>
                </div>
            </div>
            <div id='login-form'>

            </div>

        </div>
    </section>
    <footer>
        <nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
            <div class="container text-center">
                <div class="footer-content">
                    Haven't registered yet? <a href="register.jsp" class="btn btn-primary"> Register Here </a>
                </div>
            </div><!-- /.container-fluid -->
        </nav>
    </footer>
</div>
<script src="js/Furahia/base-app.js"></script>
<script src="js/Furahia/login.js"></script>


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

<script src="//cdn.jsdelivr.net/alertifyjs/1.8.0/alertify.min.js"></script>
</html>