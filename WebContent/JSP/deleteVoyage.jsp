
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
<title>Delete Voyage</title>
</head>
<body>
<%

String IDRes = request.getParameter("codeV");
int cdVoy = Integer.parseInt(IDRes);

SessionFactory factory = ConnexionHibernateUtil.getSessionFactory();

Session sess = factory.openSession();


Transaction tx = null;


try{
	
	tx = sess.beginTransaction();
	
	voyage res = sess.get(voyage.class, cdVoy);
	
	sess.delete(res);
	
	if(sess != null){
		
		System.out.println("Row Deleted ...");
		
		response.sendRedirect("../Admin/gererVoyage.jsp");
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