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
<title>Delete Ville</title>
</head>
<body>
<%

String IDHotel = request.getParameter("idVille");
int idC = Integer.parseInt(IDHotel);

SessionFactory factory = ConnexionHibernateUtil.getSessionFactory();

Session sess = factory.openSession();

Transaction tx = null;


try{
	
	tx = sess.beginTransaction();
	
	ville h = sess.get(ville.class, idC);
	
	sess.delete(h);
	
	if(sess != null){
		
		System.out.println("Row Deleted ...");
		
		response.sendRedirect("../Admin/gererVille.jsp");
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