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
<title>Edit Hotel</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;

String idHotel = request.getParameter("idHotelUpdate");
int idHot = Integer.parseInt(idHotel);

String adrH = request.getParameter("adresseHotelUpdate");    





String nbrChH = request.getParameter("nbrChambreHUpdate");
int nChH = Integer.parseInt(nbrChH);
		
		
String numTH = request.getParameter("numTelHotelUpdate");

		

String clsH = request.getParameter("classementHotelUpdate");

	

String sWH = request.getParameter("siteWebHotelUpdate");



factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	hotel hot = sess.get(hotel.class, idHot);
	
	hot.setAdresseH(adrH);
	hot.setNbrChambreH(nChH);
	hot.setNumTeleH(numTH);
	hot.setClassementH(clsH);
	hot.setSiteWebH(sWH);
	
	
	sess.update(hot);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
		response.sendRedirect("../Admin/gererHotel.jsp");
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