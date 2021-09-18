<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

 
<%@page import="modele.*" %> 
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.Transaction" %>

<%@page import="org.hibernate.SessionFactory" %>
<%@page import="DB.ConnexionHibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
 
    <% 
        
        
 
            
            
            String UT = request.getParameter("userType");    
            
    		
            
            
            
            String nameUser = request.getParameter("nameInputUser");
            
            		
            String emailUser = request.getParameter("emailInputUser");
           
            		
            		
            String psUser = request.getParameter("passwordInputUser");
            
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            utilisateur u ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            
            		
            u = new utilisateur(UT , nameUser , emailUser , psUser );
            		
            System.out.println("Vars : "+UT + nameUser + emailUser + psUser);
            
            ss.save(u);		 
            
            //System.out.println(ss);
            //ss.beginTransaction().commit();		
            
            tx.commit();
            		
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererUser.jsp");
            
            }		
            	
            
        %>