<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@page import="java.util.Date" %> 
<%@page import="java.text.*" %> 
<%@page import="modele.*" %> 
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.Transaction" %>

<%@page import="org.hibernate.SessionFactory" %>
<%@page import="DB.ConnexionHibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
 
    <% 
        
        
 
            
            
            String dteR = request.getParameter("dateReservation");    
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            /* try { */
            Date ReservationDate = sdf.parse(dteR);
    			
    		
            	 
            
            
            
            
            
            String montantPayeR = request.getParameter("montant-paye");
            double mpR = Double.parseDouble(montantPayeR);
            		
            String idUserR = request.getParameter("id-userRes");
            int idUR = Integer.parseInt(idUserR);
            		
            		
            String CVR = request.getParameter("code-voyageRes");
            int codeVR = Integer.parseInt(CVR);
            		
            
            String CVTR = request.getParameter("code-VTRes");
            int cdVTR = Integer.parseInt(CVTR);
            	
            
            String idAR = request.getParameter("idActRes");
            int idActRes = Integer.parseInt(idAR);
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            reservation rr ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            
            
          
            
            
            
            
            
            
            
            
            
           /*  if(CVTR.equals("") && idAR.equals("") ){		
            rr = new reservation(  ReservationDate  , mpR, idUR , codeVR  );
            		s.save(rr); tx.commit();
            		
           
            		} */
            
            	rr = new reservation(ReservationDate , mpR , idUR , codeVR , cdVTR , idActRes );
            	 ss.save(rr);	
            	 //tx.commit();
         		
                
            	 
            
            		
            		
            //ss.getTransaction().begin();
            
           	 
            
            //System.out.println(ss);
            //ss.beginTransaction().commit();		
            
            tx.commit();
            		
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererReservationVoyage.jsp");
            
            }		
            	
            
        %>