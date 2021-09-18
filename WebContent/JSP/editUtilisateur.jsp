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
<title>Edit Utilisateur</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;




String idUser = request.getParameter("idUserUpdate");
int idUsr = Integer.parseInt(idUser);


String UT = request.getParameter("userTypeUpdate");    


String nameUser = request.getParameter("nameInputUserUpdate");

		
String emailUser = request.getParameter("emailInputUserUpdate");

				
String psUser = request.getParameter("passwordInputUserUpdate");



factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	utilisateur u = sess.get(utilisateur.class, idUsr);
	
	u.setTypeU(UT);
	u.setNomU(nameUser);
	u.setEmailU(emailUser);
	u.setMotDePasseU(psUser);
	
	sess.update(u);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
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