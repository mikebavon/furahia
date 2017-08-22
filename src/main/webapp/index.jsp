<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Furahia</title>
    <script src="//cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
    <script src="js/Furahia/base-app.js"></script>

    <script
            src="https://code.jquery.com/jquery-3.1.0.min.js"
            integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s="
            crossorigin="anonymous"></script>

    <!-- JavaScript -->

    <script src="//cdn.jsdelivr.net/alertifyjs/1.8.0/alertify.min.js"></script>

    <link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/alertify.min.css"/>
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/default.min.css"/>
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/semantic.min.css"/>
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/alertifyjs/1.8.0/css/themes/bootstrap.min.css"/>



    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/nifty.min.css" rel="stylesheet">

    <!--Font Awesome [ DEMONSTRATION ]-->
    <link href="
https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">


    <!--JAVASCRIPT-->
    <!--=================================================-->


    <!--jQuery [ REQUIRED ]-->
    <script src="js/jquery-2.2.4.min.js"></script>


    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="js/bootstrap.min.js"></script>


    <!--NiftyJS [ RECOMMENDED ]-->
    <script src="js/nifty.min.js"></script>



    <link href="css/datetimepicker.css" rel="stylesheet">

    <script src="js/datetimepicker.min.js"></script>


    <link href="client/fine-uploader-new.css" rel="stylesheet">
    <link href="css/uploadFile.css" rel="stylesheet">
    <!-- Fine Uploader JS file
    ====================================================================== -->
    <script src="client/fine-uploader.js"></script>



</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->
<body>
<div id="container" class="effect aside-float aside-bright mainnav-lg">

    <!--NAVBAR-->
    <!--===================================================-->
    <header id="navbar">
        <div id="navbar-container" class="boxed">

            <!--Brand logo & name-->
            <!--================================-->
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand">
                    <img src="img/logo.png" alt="Nifty Logo" class="brand-icon">
                    <div class="brand-title">
                        <span class="brand-text">Furahia</span>
                    </div>
                </a>
            </div>
            <!--================================-->
            <!--End brand logo & name-->


            <!--Navbar Dropdown-->
            <!--================================-->
            <div class="navbar-content clearfix">
                <ul class="nav navbar-top-links pull-left">

                    <!--Navigation toogle button-->
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <li class="tgl-menu-btn">
                        <a class="mainnav-toggle" href="#">
                            <i class="demo-pli-view-list"></i>
                        </a>
                    </li>
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <!--End Navigation toogle button-->




                </ul>
                <ul class="nav navbar-top-links pull-right">




                    <!--User dropdown-->
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <li id="dropdown-user" class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">
                                <span class="pull-right">
                                    <!--<img class="img-circle img-user media-object" src="img/profile-photos/1.png" alt="Profile Picture">-->
                                    <i class="demo-pli-male ic-user"></i>

                                </span>
                            <div class="username hidden-xs" id="username1">Username Comes Here<div class="aside-toggle navbar-aside-icon">
                            </div></div>
                        </a>



                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">



                            <!-- User dropdown menu -->
                            <ul class="head-list">
                                <li>
                                    <a href="#">
                                        <i class="demo-pli-male icon-lg icon-fw"></i> Profile
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="demo-pli-computer-secure icon-lg icon-fw"></i> Lock screen
                                    </a>
                                </li>
                            </ul>

                            <!-- Dropdown footer -->
                            <div class="pad-all text-right">
                                <a href="#" class="btn btn-primary">
                                    <i class="demo-pli-unlock"></i> Logout
                                </a>
                            </div>
                        </div>
                    </li>
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <!--End user dropdown-->

                </ul>
            </div>
            <!--================================-->
            <!--End Navbar Dropdown-->

        </div>
    </header>
    <!--===================================================-->
    <!--END NAVBAR-->

    <div class="boxed">

        <!--CONTENT CONTAINER-->
        <!--===================================================-->
        <div id="content-container">

            <!--Page Title-->
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <div id="page-title">
                <h1 class="page-header text-overflow">Dashboard</h1>

                <!--Searchbox-->
                <div class="searchbox">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Search..">
                        <span class="input-group-btn">
                                <button class="text-muted" type="button"><i class="demo-pli-magnifi-glass"></i></button>
                            </span>
                    </div>
                </div>
            </div>

            <div class=" container">
                <div class ="row" >
                    <div class="col-lg-11 col-md-11 col-sm-11" id="ajax-content">

            </div>
        </div>
    </div>





<script>
    $('#mydate').data('datepicker')
</script>
        </div>

    </div>
    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
    <!--End page title-->



    <!--MAIN NAVIGATION-->
    <!--===================================================-->
    <nav id="mainnav-container">
        <div id="mainnav">

            <!--Menu-->
            <!--================================-->
            <div id="mainnav-menu-wrap">
                <div class="nano">
                    <div class="nano-content">


                        <!--Shortcut buttons-->
                        <!--================================-->


                        <ul id="mainnav-menu" class="list-group">
                            <li class="list-divider"></li>
                            <!--Category name-->
                            <li class="list-header">Basic Actions</li>

                            <!--Menu list item-->
                            <li class="active-link">
                                <a href="index.jsp">
                                    <i class="demo-psi-home"></i>
                                    <span class="menu-title">
												<strong>Dashboard</strong>
											</span>
                                </a>
                            </li>
                            <li class="list-divider"></li>
                            <!--Menu list item-->
                            <li>
                                <a onclick="charityOrg.list()">
                                    <i class=" fa fa-university "></i>
                                    <span class="menu-title">
												<strong>Charity Organizations</strong>
											</span>
                                </a>

                            </li>

                            <li class="list-divider"></li>
                            <li>
                                <a onclick="beneficiary.list()">
                                    <i class="fa fa-users" aria-hidden="true"></i>
                                    <span class="menu-title">
												<strong>Beneficiaries</strong>
											</span>
                                </a>
                            </li>

                            <li class="list-divider"></li>
                            <li>
                                <a onclick="donor.list()">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <span class="menu-title">
												<strong>Donors</strong>
											</span>
                                </a>

                                <!--Submenu-->

                            </li>
                            <li class="list-divider"></li>

                        </ul>

                    </div>
                </div>
            </div>
            <!--================================-->
            <!--End menu-->

        </div>
    </nav>
    <!--===================================================-->
    <!--END MAIN NAVIGATION-->

</div>

<!-- SCROLL PAGE BUTTON -->
<!--===================================================-->
<button class="scroll-top btn">
    <i class="pci-chevron chevron-up"></i>
</button>
<!--===================================================-->



</div>

<!--===================================================-->
<!-- END OF CONTAINER -->
</body>

<script src="js/Furahia/charityOrg.js"></script>
<script src="js/Furahia/beneficiary.js"></script>
<script src="js/Furahia/donor.js"></script>

</html>
