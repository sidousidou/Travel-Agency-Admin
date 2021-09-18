<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="org.hibernate.HibernateException"%>
<%@page import="modele.*"%>
<%@page import="DB.ConnexionHibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.*"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Admin Client</title>
</head>
<body>
<%


SessionFactory factory = null;

Session sess = null;

Transaction tx = null;






factory = ConnexionHibernateUtil.getSessionFactory();

sess = factory.openSession();

try{
	
tx = sess.beginTransaction();



List utilisateur = sess.createQuery("From utilisateur").list();


for(Iterator iterator = utilisateur.iterator(); iterator.hasNext();){

	utilisateur ut = (utilisateur) iterator.next();
	
	
	
	if( ut.getTypeU().equals("admin") ) {
		/* HttpSession session=request.getSession(true);
		session.setAttribute("pass", password);
		session.setAttribute("email", mail); */
		//this.getServletContext().getRequestDispatcher("/Admin/index.jsp").forward(request, response);
		response.sendRedirect("/TravelAgencyAdmin/Admin/index.jsp");
		/* RequestDispatcher dd= request.getRequestDispatcher("/Admin/index.jsp");
		dd.forward(request, response); */
		
		
	}else if(ut.getTypeU().equals("client")) {
		/* HttpSession session=request.getSession(true);
		session.setAttribute("pass", password);
		session.setAttribute("email", mail); */
		//this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		response.sendRedirect("/TravelAgencyAdmin/index.jsp");
		/* RequestDispatcher dd= request.getRequestDispatcher("/index.jsp");
		dd.forward(request, response); */
		
	}
	
	
	
	
	
	
	
}//end for

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
}//end finally






%>
</body>
</html>