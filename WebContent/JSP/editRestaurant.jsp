<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="modele.*"%>
<%@page import="org.hibernate.HibernateException"%>    

<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="DB.ConnexionHibernateUtil"%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Restaurant</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;


String idRes = request.getParameter("idRestaurantUpdate");

int idReserv = Integer.parseInt(idRes);


String AdrRes = request.getParameter("adresseRestaurantUpdate");



String numTelRes = request.getParameter("numTelRestaurantUpdate");

	

String clsRes = request.getParameter("classementRestaurantUpdate");



factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	restaurant res = sess.get(restaurant.class, idReserv);
	
	res.setAdresseR(AdrRes);
	res.setNumTeleR(numTelRes);
	res.setClassementR(clsRes);
	
	sess.update(res);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
		response.sendRedirect("../Admin/gererRestaurant.jsp");
	}
	
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
	   
}



%>

</body>
</html>