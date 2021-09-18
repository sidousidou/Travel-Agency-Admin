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

String IDLT = request.getParameter("idLT");
int idlt = Integer.parseInt(IDLT);

SessionFactory factory = ConnexionHibernateUtil.getSessionFactory();

Session sess = factory.openSession();


Transaction tx = null;


try{
	
	tx = sess.beginTransaction();
	
	lieutouristique h = sess.get(lieutouristique.class, idlt);
	
	sess.delete(h);
	
	if(sess != null){
		
		System.out.println("Row Deleted ...");
		
		response.sendRedirect("../Admin/gererLieuTouristique.jsp");
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