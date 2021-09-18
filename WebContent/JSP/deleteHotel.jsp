<%@page import="org.hibernate.HibernateException"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="DB.ConnexionHibernateUtil"%>
<%@page import="modele.*"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"%>
    	 
    	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Hotel</title>
</head>
<body>
<%

String IDHotel = request.getParameter("idH");
int idH = Integer.parseInt(IDHotel);

SessionFactory factory = ConnexionHibernateUtil.getSessionFactory();

Session sess = factory.openSession();


Transaction tx = null;


try{
	
	tx = sess.beginTransaction();
	
	hotel h = sess.get(hotel.class, idH);
	
	sess.delete(h);
	
	if(sess != null){
		
		System.out.println("Row Deleted ...");
		
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