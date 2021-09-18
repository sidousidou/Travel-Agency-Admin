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
<title>Edit Voyage</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;

String cdv = request.getParameter("codeVoyUpdate");
int codeVup = Integer.parseInt(cdv);


String AdrRes = request.getParameter("dateDVUpdate");

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

Date datedebut = sdf.parse(AdrRes);


String AdrRess = request.getParameter("dateFVUpdate");

SimpleDateFormat sdff = new SimpleDateFormat("yyyy-MM-dd");

Date datefin = sdff.parse(AdrRess);

		

String numTelRes = request.getParameter("IDUVUpdate");
int idUsrV = Integer.parseInt(numTelRes);
	

String clsRes = request.getParameter("codeCircVoyageUpdate");
int cdCV = Integer.parseInt(clsRes);


String clsRess = request.getParameter("idVilleVoyageUpdate");
int idv = Integer.parseInt(clsRess);




factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	voyage res = sess.get(voyage.class, codeVup);
	
	res.setDateDebutV(datedebut);
	res.setDateFinV(datefin);
	res.setIdUserVoy(idUsrV);
	res.setCodeCircuitV(cdCV);
	res.setIdVilleV(idv);
	
	sess.update(res);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
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