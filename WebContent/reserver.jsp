<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="DAO.DataAccess" %> --%>
<%@ page import="org.apache.jasper.*" %>


<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="DB.ConnexionHibernateUtil"%>


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
    <title>Add Reservation Form</title>

    <!-- Fontfaces CSS-->
    <link href="Admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/fontawesome-free-5.10.1-web/css/all.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="Admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="Admin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    
    
<body>

<form action="">
<div class="page-container">
            

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                           
                           
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Basic Form</strong> For Add Reservation
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="../JSP/addReservation.jsp" role="form" method="post" > <!-- enctype="multipart/form-data" class="form-horizontal"> -->
                                            
                                            
                                            <!-- <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="selectLg" class=" form-control-label">Select Type : </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select name="selectLg" id="selectLg" class="form-control-lg form-control" >
                                                        <option value="0">Please select the user type</option>
                                                        <option value="1">admin</option>
                                                        <option value="2">client</option>
                                                    </select>
                                                </div>
                                            </div> -->
                                            
                                            
                                            <!-- <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="id-reservation" class=" form-control-label">ID Reservation :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="id-reservation" name="id-reservation" placeholder="ID Reservation" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer l'ID de la reservation</small>
                                                </div>
                                            </div> -->
                                            
                                            
                                            
                                            <%-- <% while(request.getParameter("dateD").equals(request.getParameter("dateF")) ){ 
                                            
                                            	
                                            	
                                            %> --%>
                                            
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class="date">Date De Reservation : </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="date" name="dateReservation" placeholder="Entrer la date de la reservation" class="form-control">
                                                    <small class="help-block form-text">SVP entrer la date de la reservation</small>
                                                </div>
                                            </div>
                                            
                                            <%-- <%} %> --%>
                                            
                                            
                                             <!-- <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">Montant Paye :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" name="montant-paye" placeholder="Montant Paye" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer le montant paye</small>
                                                </div>
                                            </div> --> 
                                            
                                            
                                             <div class="row form-group" >
                                                <div class="col col-md-3">
                                                <label class=" form-control-label">Montant Paye :  </label>
                                                </div>
                                                    <div class="input-group col-12 col-md-9">
                                                        
                                                        <input type="text" name="montant-paye" placeholder="..." class="form-control">
                                                        
                                                        
                                                    </div>
                                                
                                            </div> 
                                            
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">codUser :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" name="id-userRes" placeholder="User ID " class="form-control">
                                                    <small class="form-text text-muted">SVP entrer CodeUser </small>
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">Code Voyage :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text"  name="code-voyageRes" placeholder="Code Voyage" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer le code du voyage </small>
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">Code Visite Touristique :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text"  name="code-VTRes" placeholder="Code Visite Touristique" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer le code du visite touristique </small>
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">ID Activite :  </label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" name="idActRes" placeholder="l'ID d'Activite" class="form-control">
                                                    <small class="form-text text-muted">SVP entrer l'ID de l'activite</small>
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
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        

    

    <!-- Jquery JS-->
    <script src="Admin/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="Admin/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="Admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="Admin/vendor/slick/slick.min.js">
    </script>
    <script src="Admin/vendor/wow/wow.min.js"></script>
    <script src="Admin/vendor/animsition/animsition.min.js"></script>
    <script src="Admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="Admin/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="Admin/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="Admin/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="Admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="Admin/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="Admin/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="Admin/js/main.js"></script>

</body>

</html>
<!-- end document-->



