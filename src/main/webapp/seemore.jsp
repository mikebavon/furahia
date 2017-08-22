<!DOCTYPE html>
<html lang="en">


<head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EventNix| Home Page</title>

    <link href="css/min.css" rel="stylesheet">
    <link href="css/theme.min.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/nifty.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/colors/default.css" id="option_color">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<script src="js/Furahia/base-app.js"></script>
<script src="js/Furahia/seemore.js"></script>
<body onload="App.Cmp.loadBeneficiaryView()">
<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main_menu">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>


            <a href="home.jsp" class="navbar-brand">
          <%-- <img src="img/logo.png" alt="Nifty Logo" class="brand-icon">--%>
                <div class="brand-title">
                    <span class="brand-text">Furahia</span>
                </div>
            </a>

        </div>
        <!--End NavBar-Header-->
        <div class="collapse navbar-collapse" id="main_menu">

            <ul class="nav navbar-nav navbar-right">
                <a href="institutions.jsp"><b>Charity Organizations</b></a>
                <div class=' btn btn-group'>
                    <a class ="btn btn-success dropdown-toggle" id="username"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="App.Cmp.register()" > ><span class="caret"></span></a>
                    <ul class="dropdown-menu" id = "username-dropdown">
                        <li><a onclick="App.Cmp.loadUserDetails()" data-toggle="modal" data-target="#myModal">Edit your Profile</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">View my Pledges</a></li>
                    </ul>
                    <a class ="btn btn-warning" id="login" onclick= "App.Cmp.signout()" href ="login.jsp"></a>


                </div>

            </ul>





        </div>


    </div><!--End collapse-->
    </div> <!--End Container-->
    </div>
</nav><!--End NavBar-->
</br></br>     </br>


</section>


<section class="well">
    <br>
    <div class="container" id="seemore-content">
    </div>
</section>

<!-- LIGHT SECTION -->


<script
        src="https://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
        crossorigin="anonymous"></script>


<!--bootstrap minified javascript-->
<script src="js/bootstrap.min.js"></script>
<script src="js/Furahia/onLogin.js"></script>
<script src="js/Furahia/donor-modal.js"></script>
</body>

</html>