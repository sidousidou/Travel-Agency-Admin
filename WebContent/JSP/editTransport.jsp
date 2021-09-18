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
<title>Edit Transport</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;


String idRes = request.getParameter("idTransportUpdate");

int idTrans = Integer.parseInt(idRes);


String AdrRes = request.getParameter("typeTransportUpdate");



String nbr = request.getParameter("nbrPlaceTransportUpdate");

int nbrPlc = Integer.parseInt(nbr);	





factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	transport res = sess.get(transport.class, idTrans);
	
	res.setTypeT(AdrRes);
	res.setNbrPlaceT(nbrPlc);
	
	sess.update(res);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
		response.sendRedirect("../Admin/gererTransport.jsp");
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