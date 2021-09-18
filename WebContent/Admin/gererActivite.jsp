<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@ page import="DAO.DataAccess" %> --%>

<%@page import="DB.ConnexionHibernateUtil"%>
<%@page import="java.util.*"%>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="modele.*"%>


<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Gerer Activite</title>

<!-- Fontfaces CSS-->
<link href="css/font-face.css" rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link href="vendor/fontawesome-free-5.10.1-web/css/all.min.css"
	rel="stylesheet" media="all">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all">

<!-- Vendor CSS-->
<link href="vendor/animsition/animsition.min.css" rel="stylesheet"
	media="all">
<link
	href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="vendor/wow/animate.css" rel="stylesheet" media="all">
<link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet"
	media="all">
<link href="vendor/slick/slick.css" rel="stylesheet" media="all">
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
<%
SessionFactory factory = null;

Session sess = null;

Transaction tx = null;
%>
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="index.jsp"> <img
							src="images/icon/logo.png" alt="CoolAdmin" />
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-user-friends"></i>Gérer Utilisateur
						</a>

							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererUser.jsp">Client</a></li>
								<li><a href="gererUser.jsp">Admin</a></li>
							</ul></li>

						<li><a href="chart.jsp"> <i class="fas fa-chart-bar"></i>Etablir
								Statistique
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-check-square"></i>Réservation
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererReservationVoyage.jsp">Voyage</a></li>
								<li><a href="gererReservationVoyage.jsp">Visite Touristique</a></li>
								<li><a href="gererReservationVoyage.jsp">Manifestation</a></li>
							</ul></li>
						<!-- <li><a href="form.jsp"> <i class="far fa-check-square"></i>Forms
						</a></li> -->
						<li class="has-sub">
							<!-- class="js-arrow"  --> <a class="js-arrow" href="#"> <!-- class="fas fa-copy"  -->
								<i class="fas fa-atlas"></i>Service Touristique
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererHotel.jsp">Hotel</a></li>
								<li><a href="gererRestaurant.jsp">Restaurant</a></li>
								<li><a href="gererTransport.jsp">Transport</a></li>
							</ul>
						</li>


						<li class="has-sub">
							<!-- class="js-arrow"  --> <a class="js-arrow" href="#"> <!-- class="fas fa-copy"  -->
								<i class="fas fa-tools"></i>Gérer Tour
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererLieuTouristique.jsp">Lieu Touristique</a></li>
								<li><a href="gererVoyage.jsp">Voyage</a></li>
								<li><a href="gererCircuit.jsp">Circuit</a></li>
								<li><a href="gererActivite.jsp">Activité</a></li>
								<li><a href="gererVille.jsp">Ville</a></li>
							</ul>
						</li>


						<!-- <li><a href="map.jsp"> <i class="fas fa-map-marker-alt"></i>Maps
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>Pages
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="login.jsp">Login</a></li>
								<li><a href="register.jsp">Register</a></li>
								<li><a href="forget-pass.jsp">Forget Password</a></li>
							</ul></li> -->

					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="index.jsp"> <img src="images/icon/logo.png"
					alt="Cool Admin" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-user-friends"></i>Gérer Utilisateur
						</a>

							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererUser.jsp">Client</a></li>
								<li><a href="gererUser.jsp">Admin</a></li>
							</ul></li>

						<li><a href="chart.jsp"> <i class="fas fa-chart-bar"></i>Etablir
								Statistique
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-check-square"></i>Réservation
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererReservationVoyage.jsp">Voyage</a></li>
								<li><a href="gererReservationVoyage.jsp">Visite Touristique</a></li>
								<li><a href="gererReservationVoyage.jsp">Manifestation</a></li>
							</ul></li>
						<!-- <li><a href="form.jsp"> <i class="far fa-check-square"></i>Forms
						</a></li> -->
						<li class="has-sub">
							<!-- class="js-arrow"  --> <a class="js-arrow" href="#"> <!-- class="fas fa-copy"  -->
								<i class="fas fa-atlas"></i>Service Touristique
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererHotel.jsp">Hotel</a></li>
								<li><a href="gererRestaurant.jsp">Restaurant</a></li>
								<li><a href="gererTransport.jsp">Transport</a></li>
							</ul>
						</li>


						<li class="has-sub">
							<!-- class="js-arrow"  --> <a class="js-arrow" href="#"> <!-- class="fas fa-copy"  -->
								<i class="fas fa-tools"></i>Gérer Tour
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="gererLieuTouristique.jsp">Lieu Touristique</a></li>
								<li><a href="gererVoyage.jsp">Voyage</a></li>
								<li><a href="gererCircuit.jsp">Circuit</a></li>
								<li><a href="gererActivite.jsp">Activité</a></li>
								<li><a href="gererVille.jsp">Ville</a></li>
							</ul>
						</li>


						<!-- <li><a href="map.jsp"> <i class="fas fa-map-marker-alt"></i>Maps
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>Pages
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="login.jsp">Login</a></li>
								<li><a href="register.jsp">Register</a></li>
								<li><a href="forget-pass.jsp">Forget Password</a></li>
							</ul></li> -->
						
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
								<input class="au-input au-input--xl" type="text" name="search"
									placeholder="Search for datas &amp; reports..." />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
							<div class="header-button">
								<div class="noti-wrap">
									<div class="noti__item js-item-menu">
										<i class="zmdi zmdi-comment-more"></i> <span class="quantity">1</span>
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
										<i class="zmdi zmdi-email"></i> <span class="quantity">1</span>
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
										<i class="zmdi zmdi-notifications"></i> <span class="quantity">3</span>
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
													<a href="#"> <img src="images/icon/sidou.jpg"
														alt="Sidou" />
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
													<a href="#"> <i class="zmdi zmdi-account"></i>Account
													</a>
												</div>
												<div class="account-dropdown__item">
													<a href="#"> <i class="zmdi zmdi-settings"></i>Setting
													</a>
												</div>
												<div class="account-dropdown__item">
													<a href="#"> <i class="zmdi zmdi-money-box"></i>Billing
													</a>
												</div>
											</div>
											<div class="account-dropdown__footer">
												<a href="#"> <i class="zmdi zmdi-power"></i>Logout
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- END HEADER DESKTOP-->




			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">

						
						
						<div class="row">
							<div class="col-md-12">



								
								
								



								<!-- DATA TABLE -->
								<h3 class="title-5 m-b-35">Activites table</h3>
								<div class="table-data__tool">
									<div class="table-data__tool-left">
										<div class="rs-select2--light rs-select2--md">
											<select class="js-select2" name="property">
												<option selected="selected">All Properties</option>
												<option value="">Option 1</option>
												<option value="">Option 2</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
										<div class="rs-select2--light rs-select2--sm">
											<select class="js-select2" name="time">
												<option selected="selected">Today</option>
												<option value="">3 Days</option>
												<option value="">1 Week</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
										<button class="au-btn-filter">
											<i class="zmdi zmdi-filter-list"></i>filters
										</button>
									</div>
									<div class="table-data__tool-right">
										
										
										<a class="addVoyageBtn" href="addActiviteForm.jsp">
											<button class="au-btn au-btn-icon au-btn--green au-btn--small">
												<i class="zmdi zmdi-plus" ></i>add Activite
											</button>
										</a>

										<div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
											<select class="js-select2" name="type">
												<option selected="selected">Export</option>
												<option value="">Option 1</option>
												<option value="">Option 2</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>
								<div class="table-responsive table-responsive-data">
									<table class="table table-data2">
										<thead>
											<tr>
												<th><label class="au-checkbox"> <input
														type="checkbox"> <span class="au-checkmark"></span>
												</label></th>
												<th>ID Activite</th>
												<th>Type Activite</th>
												<th>Description Activite</th>
												<th>ID Ville Activite</th>
												
												
												<!-- <th>email</th>
												<th>mot de passe</th> -->
                                                <!-- <th>date</th> -->
                                                
                                                <!-- <th>price</th> -->
												<th></th>
                                            </tr>
                                        </thead>
                                        
                                        
                                       
								
                                        <tbody>
                                        <%
                                        
                                        factory = ConnexionHibernateUtil.getSessionFactory();
                                        
                                        sess = factory.openSession();
                                        
                                        try{
                                        	
                                        tx = sess.beginTransaction();
                                        
                                        
                                        List activite = sess.createQuery("From activite").list();
                                        
                                        
                                        for(Iterator iterator = activite.iterator(); iterator.hasNext();){
                                        
                                        	activite h = (activite) iterator.next();
                                        
                                        %>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label
													class="au-checkbox">
                                                        <input
														type="checkbox">
                                                        	<span
														class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                
                                                
													<td>
                                                <span> <%= h.getIdA() %> </span>
                                                </td> 
													
                                             
                                                	
                                                	
                                                	<td><%= h.getTypeA() %></td>
                                                	
                                                    
                                                
                            
                                                <td>
                                                <span><%= h.getDescriptionA() %></span>
                                                </td>
                                                
                                                <td>
                                                <span> <%= h.getIdVilleA() %> </span>
                                                </td> 
                                                
                                                
                                                
                                                
                                                
                
                                                
                                                <!-- <td>redgrdw</td> -->
                                                <!-- <td>2018-09-27 02:12</td> -->
                                                <td>
                                                    <div
														class="table-data-feature">
                                                        <!-- <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                        </button> -->
                                                        <a href="../JSP/updateActiviteForm.jsp?idA=<%= h.getIdA() %>"><button
															class="item" data-toggle="tooltip" data-placement="top"
															title="Edit">
                                                            <i
																class="zmdi zmdi-edit"></i>
                                                        </button></a>
                                                        
                                                        <a href="../JSP/deleteActivite.jsp?idA=<%= h.getIdA() %>"><button
															class="item" data-toggle="tooltip" data-placement="top"
															title="Delete">
                                                            <i
																class="zmdi zmdi-delete"></i>
                                                        </button></a>
                                                        <button
															class="item" data-toggle="tooltip" data-placement="top"
															title="More">
                                                            <i
																class="zmdi zmdi-more"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            
                                            <tr class="spacer"></tr>

                                             
                                                                                        <%
                                        }//end for
                                          
                                        tx.commit();
                                        
                                        }//end try
                                        
                                        catch(HibernateException ex){
                                        	
                                        	if(tx != null){
                                        		
                                        	tx.rollback();
                                        		
                                        	ex.printStackTrace();
                                        	
                                        	
                                        	}//end if
                                        	
                                        }//end catch
                                        
                                        finally{
                                        	sess.close();
                                        }//end finally
                                        
                                            %>
                                             
                                             
                                        </tbody>
                                      
                                    </table>
                                  
                                </div>
                                
                                <!-- END DATA TABLE -->
                                
                                
                                
                                
                                
<%-- 
 
<!-- // Get users From DB -->

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("idU");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "travelagencydb";
String userId = "root";
String password = "sidouhaha";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>user_id</b></td>
<td><b>Password</b></td>
<td><b>Name</b></td>
<td><b>Email</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM utilisateur";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("idU") %></td>
<td><%=resultSet.getString("typeU") %></td>
<td><%=resultSet.getString("motDePasseU") %></td>
<td><%=resultSet.getString("nomU") %></td>
<td><%=resultSet.getString("emailU") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table> --%>
                               
                                
                                
                                
                                
                                
                            </div>
                        </div>
                        <div class="row m-t-30">
                            <div class="col-md-12">
                               
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright Â© 2018 Colorlib. All rights reserved. Template by <a
											href="https://colorlib.com">Colorlib</a>.</p>
                                </div>
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
    <script
		src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
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
    