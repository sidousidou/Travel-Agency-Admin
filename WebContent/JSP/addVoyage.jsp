<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@page import="java.util.Date" %> 
<%@page import="java.text.SimpleDateFormat" %> 
<%@page import="modele.*" %> 
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.Transaction" %>

<%@page import="org.hibernate.SessionFactory" %>
<%@page import="DB.ConnexionHibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
 
    <% 
        
      
            		
            		
            String AdrRes = request.getParameter("dateDV");
    		
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		    
		    Date datedebut = sdf.parse(AdrRes);
		    
		    
			String AdrRess = request.getParameter("dateFV");
    		
		    SimpleDateFormat sdff = new SimpleDateFormat("yyyy-MM-dd");
		    
		    Date datefin = sdff.parse(AdrRess);
            
            		
            
            String numTelRes = request.getParameter("IDUV");
            int idUsrV = Integer.parseInt(numTelRes);
            	
            
            String clsRes = request.getParameter("codeCircVoyage");
            int cdCV = Integer.parseInt(clsRes);
            
            
            String clsRess = request.getParameter("idVilleVoyage");
            int idv = Integer.parseInt(clsRess);
            
            
            SessionFactory factory = null;
            		
            Session ss = null;		
            
            voyage r ;
            
            factory = ConnexionHibernateUtil.getSessionFactory();

            ss = factory.openSession();
            
            Transaction tx = ss.beginTransaction();
            
            		
            r = new voyage(datedebut,datefin , idUsrV,cdCV , idv);
            		
            		
            //ss.getTransaction().begin();
            
            ss.save(r);		 
            
            //System.out.println(ss);
            //ss.beginTransaction().commit();		
            
            tx.commit();
            		
            if(ss != null){
            	
            System.out.println("Record Saved ... ");
            
            response.sendRedirect("/TravelAgencyAdmin/Admin/gererVoyage.jsp");
            
            }		
            	
            
        %>