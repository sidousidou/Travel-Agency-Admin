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
        
      
            		
            		
            String AdrRes = request.getParameter("adresseRestaurant");
            
            		
            
            String numTelRes = request.getParameter("numTelRestaurant");
            
            	
            
            String clsRes = request.getParameter("classementRestaurant");
            
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            restaurant r ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            
            		
            r = new restaurant(AdrRes , numTelRes , clsRes);
            		
            		
            //ss.getTransaction().begin();
            
            ss.save(r);		 
            
            //System.out.println(ss);
            //ss.beginTransaction().commit();		
            
            tx.commit();
            		
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererRestaurant.jsp");
            
            }		
            	
            
        %>