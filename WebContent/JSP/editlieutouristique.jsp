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
<title>Edit Lieu Tour</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;


String idRes = request.getParameter("idLieuTourUpdate");

int idltour = Integer.parseInt(idRes);


String tlt = request.getParameter("typeLieuTourUpdate");



String dlt = request.getParameter("descLTUpdate");

	

String nlt = request.getParameter("nomLTUpdate");


String adrlt = request.getParameter("adresseLTUpdate");


String idvltT = request.getParameter("idVilleLTUpdate");
int idvlt = Integer.parseInt(idvltT);


factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	lieutouristique res = sess.get(lieutouristique.class, idltour);
	
	res.setTypeLT(tlt);
	res.setDescriptionLT(dlt);
	res.setNomLT(nlt);
	res.setAdresseLT(adrlt);
	res.setIdVilleLT(idvlt);
	
	
	sess.update(res);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
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