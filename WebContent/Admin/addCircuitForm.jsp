<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DB.ConnexionHibernateUtil" %>    
<%-- <%@ page import="DAO.DataAccess" %> --%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Add Circuit Form</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/fontawesome-free-5.10.1-web/css/all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
<% //testing

	ConnexionHibernateUtil.getSessionFactory();

%> 
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.jsp">
                            <img src="images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-user-friends"></i>G??rer Utilisateur</a>
                            
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="gererUser.jsp">Client</a>
                                </li>
                                <li>
                                    <a href="gererUser.jsp">Admin</a>
                                </li>
                            </ul>
                            
                        </li>
                        <li>
                            <a href="chart.jsp">
                                <i class="fas fa-chart-bar"></i>Etablir Statistique</a>
                        </li>
                        <li class="has-sub"><a class="js-arrow" href="#"> 
						<i class="fas fa-check-square"></i>R??servation </a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererReservationVoyage.jsp">Voyage</a></li>
								<li><a href="gererReservationVoyage.jsp">Visite Touristique</a></li>
								<li><a href="gererReservationVoyage.jsp">Manifestation</a></li>
							</ul></li>
                        <!-- <li>
                            <a href="form.jsp">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li> -->
                        <li class="has-sub">
    <!-- class="js-arrow"  -->  <a class="js-arrow" href="#">
    <!-- class="fas fa-copy"  -->  <i class="fas fa-atlas" ></i>Service Touristique</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="gererHotel.jsp">Hotel</a>
                                </li>
                                <li>
                                    <a href="gererRestaurant.jsp">Restaurant</a>
                                </li>
                                <li>
                                    <a href="gererTransport.jsp">Transport</a>
                                </li>
                            </ul>
                        </li>
                        
                        
                        <li class="has-sub">
							<!-- class="js-arrow"  --> <a class="js-arrow" href="#"> <!-- class="fas fa-copy"  -->
								<i class="fas fa-tools"></i>G??rer Tour
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererLieuTouristique.jsp">Lieu Touristique</a></li>
								<li><a href="gererVoyage.jsp">Voyage</a></li>
								<li><a href="gererCircuit.jsp">Circuit</a></li>
								<li><a href="gererActivite.jsp">Activit??</a></li>
								<li><a href="gererVille.jsp">Ville</a></li>
							</ul>
						</li>
                        
                        
                        <!-- <li>
                            <a href="map.jsp">
                                <i class="fas fa-map-marker-alt"></i>Maps</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="login.jsp">Login</a>
                                </li>
                                <li>
                                    <a href="register.jsp">Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.jsp">Forget Password</a>
                                </li>
                            </ul>
                        </li> -->
                        
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="index.jsp">
                    <img src="images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-user-friends"></i>G??rer Utilisateur</a>
                            
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="gererUser.jsp">Client</a>
                                </li>
                                <li>
                                    <a href="gererUser.jsp">Admin</a>
                                </li>
                            </ul>
                            
                        </li>
                        <li>
                            <a href="chart.jsp">
                                <i class="fas fa-chart-bar"></i>Etablir Statistique</a>
                        </li>
                        <li class="has-sub"><a class="js-arrow" href="#"> 
						<i class="fas fa-check-square"></i>R??servation </a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererReservationVoyage.jsp">Voyage</a></li>
								<li><a href="gererReservationVoyage.jsp">Visite Touristique</a></li>
								<li><a href="gererReservationVoyage.jsp">Manifestation</a></li>
							</ul></li>
                        <!-- <li >
                            <a href="form.jsp">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li> -->
                       <li class="has-sub">
    <!-- class="js-arrow"  -->  <a class="js-arrow" href="#">
    <!-- class="fas fa-copy"  -->  <i class="fas fa-atlas" ></i>Service Touristique</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="gererHotel.jsp">Hotel</a>
                                </li>
                                <li>
                                    <a href="gererRestaurant.jsp">Restaurant</a>
                                </li>
                                <li>
                                    <a href="gererTransport.jsp">Transport</a>
                                </li>
                            </ul>
                        </li>
                        
                        
                        <li class="has-sub">
							<!-- class="js-arrow"  --> <a class="js-arrow" href="#"> <!-- class="fas fa-copy"  -->
								<i class="fas fa-tools"></i>G??rer Tour
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererLieuTouristique.jsp">Lieu Touristique</a></li>
								<li><a href="gererVoyage.jsp">Voyage</a></li>
								<li><a href="gererCircuit.jsp">Circuit</a></li>
								<li><a href="gererActivite.jsp">Activit??</a></li>
								<li><a href="gererVille.jsp">Ville</a></li>
							</ul>
						</li>
                        
                        
                        <!-- <li>
                            <a href="map.jsp">
                                <i class="fas fa-map-marker-alt"></i>Maps</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="login.jsp">Login</a>
                                </li>
                                <li>
                                    <a href="register.jsp">Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.jsp">Forget Password</a>
                                </li>
                            </ul>
                        </li> -->
                        
                        
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <div class="header-button">
                                <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-comment-more"></i>
                                        <span class="quantity">1</span>
                                        <div class="mess-dropdown js-dropdown">
                                            <div class="mess__title">
                                                <p>You have 2 news message</p>
                                            </div>
                                            <div class="mess__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />
                                                </div>
                                                <div class="content">
                                                    <h6>Michelle Moreno</h6>
                                                    <p>Have sent a photo</p>
                                                    <span class="time">3 min ago</span>
                                                </div>
                                            </div>
                                            <div class="mess__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-04.jpg" alt="Diane Myers" />
                                                </div>
                                                <div class="content">
                                                    <h6>Diane Myers</h6>
                                                    <p>You are now connected on message</p>
                                                    <span class="time">Yesterday</span>
                                                </div>
                                            </div>
                                            <div class="mess__footer">
                                                <a href="#">View all messages</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-email"></i>
                                        <span class="quantity">1</span>
                                        <div class="email-dropdown js-dropdown">
                                            <div class="email__title">
                                                <p>You have 3 New Emails</p>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, 3 min ago</span>
                                                </div>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, Yesterday</span>
                                                </div>
                                            </div>
                                            <div class="email__item">
                                                <div class="image img-cir img-40">
                                                    <img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
                                                </div>
                                                <div class="content">
                                                    <p>Meeting about new dashboard...</p>
                                                    <span>Cynthia Harvey, April 12,,2018</span>
                                                </div>
                                            </div>
                                            <div class="email__footer">
                                                <a href="#">See all emails</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity">3</span>
                                        <div class="notifi-dropdown js-dropdown">
                                            <div class="notifi__title">
                                                <p>You have 3 Notifications</p>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c1 img-cir img-40">
                                                    <i class="zmdi zmdi-email-open"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a email notification</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c2 img-cir img-40">
                                                    <i class="zmdi zmdi-account-box"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Your account has been blocked</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c3 img-cir img-40">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a new file</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__footer">
                                                <a href="#">All notifications</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="images/icon/sidou.jpg" alt="Sidou" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Sidou</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="images/icon/sidou.jpg" alt="Sidou" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">Sidou</a>
                                                    </h5>
                                                    <span class="email">sidou_boy@outlook.com</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-account"></i>Account</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-settings"></i>Setting</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-money-box"></i>Billing</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="#">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                           
                           
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Basic Form</strong> For Add Circuit
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="../JSP/addCircuit.jsp" enctype="multipart/form-data" class="form-horizontal">
                                            
                                            
                                            
                                            
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="dureeCircuit" class=" form-control-label">Duree Circuit :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="dureeCircuit" name="dureeCircuit" placeholder="Duree du Circuit" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer la duree du circuit</small>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="villeCircuit" class=" form-control-label">Ville Circuit :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="villeCircuit" name="villeCircuit" placeholder="Les Villes du Circuit" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer Les Villes du Circuit</small>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="idUserCircuit" class=" form-control-label">ID Utilisateur Circuit :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="idUserCircuit" name="idUserCircuit" placeholder="l'ID d'Utilisateur du Circuit" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer l'ID de l'Utilisateur du Circuit</small>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="idVilleCircuit" class=" form-control-label">ID Ville Circuit :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="idVilleCircuit" name="idVilleCircuit" placeholder="l'ID de ville du Circuit" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer l'ID de ville du Circuit</small>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            
                                           
                                            
                                            <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-arrow-circle-right "></i> Submit
                                        </button>
                                        
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                            
                                        </form>
                                    </div> 
                                    
                                </div>
                                
                                
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright ???? 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
