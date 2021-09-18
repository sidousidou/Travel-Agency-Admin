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
<title>Edit Circuit</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;

String idHotel = request.getParameter("idCircuitUpdate");
int idC = Integer.parseInt(idHotel);

String drC = request.getParameter("dureeCircuitUpdate");    



String vlesC = request.getParameter("villeCircuitUpdate");

		

String CVTR = request.getParameter("idUserCircuitUpdate");
int cdVTR = Integer.parseInt(CVTR);
	

String idAR = request.getParameter("idVilleCircuitUpdate");
int idActRes = Integer.parseInt(idAR);



factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	circuit hot = sess.get(circuit.class, idC);
	
	hot.setDureeC(drC);
	hot.setVillesC(vlesC);
	hot.setIdUserC(cdVTR);
	hot.setIdVilleC(idActRes);
	
	
	sess.update(hot);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
		response.sendRedirect("../Admin/gererCircuit.jsp");
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