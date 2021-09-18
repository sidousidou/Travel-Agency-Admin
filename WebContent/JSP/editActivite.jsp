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
<title>Edit Activite</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;

String idHotel = request.getParameter("idActiviteUpdate");
int idC = Integer.parseInt(idHotel);


String vlesC = request.getParameter("typeActiviteUpdate");



String drC = request.getParameter("descActiviteUpdate");    


		

String CVTR = request.getParameter("idVilleActiviteUpdate");
int cdVTR = Integer.parseInt(CVTR);
	




factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	activite hot = sess.get(activite.class, idC);
	
	hot.setTypeA(vlesC);
	hot.setDescriptionA(drC);
	hot.setIdVilleA(cdVTR);
	
	
	sess.update(hot);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
		response.sendRedirect("../Admin/gererActivite.jsp");
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