<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<%@page import="java.text.*" %>
<%@page import="java.lang.*" %> 
<%@page import="modele.*" %> 
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.hibernate.SessionFactory" %>
<%@page import="DB.ConnexionHibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
 
    <% 
        
        
 
            
            
            String adrH = request.getParameter("adresse-hotel");    
           
    			
    		
          
            		
            String nbrChH = request.getParameter("nbrChambreH");
            int nChH = Integer.parseInt(nbrChH);
            		
            		
            String numTH = request.getParameter("numTelHotel");
            
            		
            
            String clsH = request.getParameter("classementHotel");
            
            	
            
            String sWH = request.getParameter("siteWebHotel");
            
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            hotel h ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            		
            h = new hotel(adrH , nChH , numTH , clsH , sWH );
            		
            		
            //ss.getTransaction().begin();
            
            ss.save(h);		 
            
            //System.out.println(ss);
            //ss.beginTransaction().commit();		
            		
            tx.commit();
            
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            	
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererHotel.jsp");
            
            }		
            	
            
        %>