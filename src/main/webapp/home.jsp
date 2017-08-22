<!DOCTYPE html>
<html lang="en">


<head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Furahia| Home Page</title>

    <link href="css/min.css" rel="stylesheet">
    <link href="css/theme.min.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/colors/default.css" id="option_color">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<script src="js/Furahia/base-app.js"></script>
<script src="js/Furahia/donor.js"></script>
<script src="js/Furahia/login.js.js"></script>
<body onload="App.Cmp.setIdOnLogin();  App.Cmp.showBeneficiaries();">
<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main_menu">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="home.jsp" class="navbar-brand">Furahia</a>

        </div>
        <!--End NavBar-Header-->
        <div class="collapse navbar-collapse" id="main_menu">

            <ul class="nav navbar-nav navbar-right">
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


<div class="jumbotron" id="data-display">
    <div class="container text-center">


        <h2><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
            Thank you for becoming a setting up an account ..... </h2>
        <h3>
            To become a donor in Furahia, fill in the form below
            <i class="fa fa-hand-o-down" aria-hidden="true"></i>
        </h3>



<div  id="ajax-content">
</div>

    </div>

</div>

</section>

<section class="wrapper-md bg-highlight">
<div class="container text-center">
<button class ="btn- btn-info btn-lg" data-toggle="modal" data-target="#programInfo">LEARN MORE ON HOW THE PROGRAM WORKS </button>

    <div class="modal fade" id="programInfo" tabindex="-1" role="dialog" aria-labelledby="programInfoModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="programInfoModal">About Furahia  <i class="fa fa-smile-o" aria-hidden="true"></i>
                    </h4>
                </div>
                <div class="modal-body">
                    <div id ="programInfoModalContent">
                      <p>

                          What is Lorem Ipsum?

                          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                          It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                          It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                          Why do we use it?

                          It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
                          The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.
                          Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.
                          Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).

                      </p>

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
</div>
<p><p>
</section>

<section class="well">

    <br>
    <div class=" container" id="beneficiary-content">

    </div>
</section>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
               <div id ="donor-modal"></div>
                <div id ='donor-modal-content'></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!-- LIGHT SECTION -->


<script
        src="https://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
        crossorigin="anonymous"></script>


<!--bootstrap minified javascript-->
<script src="js/bootstrap.min.js"></script>
<script src="js/Furahia/base-app.js"></script>
<script src="js/Furahia/donor.js"></script>
<script src="js/Furahia/donor-modal.js"></script>
<script src="js/Furahia/onLogin.js"></script>
</body>

</html>