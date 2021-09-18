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
<title>Edit Reservation</title>
</head>
<body>

<%

SessionFactory factory = null;

Session sess = null;

Transaction tx = null;

String idRes = request.getParameter("idReservUpdate");
int idReserv = Integer.parseInt(idRes);

String dteR = request.getParameter("dateReservUpdate");    
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
Date ReservationDate = sdf.parse(dteR);


String montantPayeR = request.getParameter("montantPayeUpdate");
double mpR = Double.parseDouble(montantPayeR);
		

String idUserR = request.getParameter("idUserResUpdate");
int idUR = Integer.parseInt(idUserR);
		
		
String CVR = request.getParameter("codeVoyageResUpdate");
int codeVR = Integer.parseInt(CVR);
		

String CVTR = request.getParameter("codeVTResUpdate");
int cdVTR = Integer.parseInt(CVTR);
	

String idAR = request.getParameter("idActResUpdate");
int idActRes = Integer.parseInt(idAR);


factory = ConnexionHibernateUtil.getSessionFactory();


sess = factory.openSession();

try{
	
	tx = sess.beginTransaction();
	
	
	reservation res = sess.get(reservation.class, idReserv);
	
	res.setDateR(ReservationDate);
	res.setMontantPayeR(mpR);
	res.setIdUser(idUR);
	res.setCodeVoyR(codeVR);
	res.setCodeVTR(cdVTR);
	res.setIdActR(idActRes);
	
	sess.update(res);
	
	if(sess != null){
		
		System.out.println("Row Updated ...");
		
		response.sendRedirect("../Admin/gererReservationVoyage.jsp");
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