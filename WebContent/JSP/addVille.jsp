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
        
        
 
            
            
            String drC = request.getParameter("nomVille");    
            
            
 
            
            
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            ville r ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            
            	
            r = new ville(drC );
            		
            		
          
            
            ss.save(r);		 
            
            		
            
            tx.commit();
            		
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererVille.jsp");
            
            }		
            	
            
        %>