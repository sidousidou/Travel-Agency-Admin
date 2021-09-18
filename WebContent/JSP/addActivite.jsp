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
        
        
 
            
            
            String drC = request.getParameter("typeActivite");    
            
            
            
            String vlesC = request.getParameter("descActivite");
            
            		
            
            String CVTR = request.getParameter("idVilleActivite");
            int cdVTR = Integer.parseInt(CVTR);
            	
            
            
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            activite r ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            
            //if(request.getParameter("code-voyageRes").equals("") || request.getParameter("code-VTRes").equals("") || request.getParameter("idActRes").equals("") ){		
            r = new activite(drC , vlesC , cdVTR  );
            		
            		
            //ss.getTransaction().begin();
            
            ss.save(r);		 
            
            //System.out.println(ss);
            //ss.beginTransaction().commit();		
            
            tx.commit();
            		
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererActivite.jsp");
            
            }		
            	
            
        %>