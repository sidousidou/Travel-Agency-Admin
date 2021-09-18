
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
<title>Delete User</title>
</head>
<body>
<%

String IDU = request.getParameter("idU");
int idUser = Integer.parseInt(IDU);

SessionFactory factory = ConnexionHibernateUtil.getSessionFactory();

Session sess = factory.openSession();


Transaction tx = null;


try{
	
	tx = sess.beginTransaction();
	
	utilisateur u = sess.get(utilisateur.class, idUser);
	
	sess.delete(u);
	
	if(sess != null){
		
		System.out.println("Row Deleted ...");
		
		response.sendRedirect("../Admin/gererUser.jsp");
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