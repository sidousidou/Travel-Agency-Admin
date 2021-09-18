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
        
        
 
            
            
            String tpLT = request.getParameter("typeLieuTour");    
           
    			
    		
          
            		
            String descripLT = request.getParameter("descLT");
            
            		
            		
            String nomLieuT = request.getParameter("nomLT");
            
            		
            
            String alt = request.getParameter("adresseLT");
            
            	
            
            String idVlt = request.getParameter("idVilleLT");
            int idville = Integer.parseInt(idVlt);
            
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            lieutouristique h ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            		
            h = new lieutouristique(tpLT , descripLT , nomLieuT , alt , idville );
            		
            		
            //ss.getTransaction().begin();
            
            ss.save(h);		 
            
            //System.out.println(ss);
            //ss.beginTransaction().commit();		
            		
            tx.commit();
            
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            	
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererLieuTouristique.jsp");
            
            }		
            	
            
        %>