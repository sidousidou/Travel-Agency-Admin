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
        
        
 
            
            
            String drC = request.getParameter("dureeCircuit");    
            
    			
    		
            	 
            
            
            
            
            
            String vlesC = request.getParameter("villeCircuit");
            
            		
            
            String CVTR = request.getParameter("idUserCircuit");
            int cdVTR = Integer.parseInt(CVTR);
            	
            
            String idAR = request.getParameter("idVilleCircuit");
            int idActRes = Integer.parseInt(idAR);
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            circuit r ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            
            //if(request.getParameter("code-voyageRes").equals("") || request.getParameter("code-VTRes").equals("") || request.getParameter("idActRes").equals("") ){		
            r = new circuit(drC , vlesC , cdVTR , idActRes );
            		
            		
            //ss.getTransaction().begin();
            
            ss.save(r);		 
            
            //System.out.println(ss);
            //ss.beginTransaction().commit();		
            
            tx.commit();
            		
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererCircuit.jsp");
            
            }		
            	
            
        %>