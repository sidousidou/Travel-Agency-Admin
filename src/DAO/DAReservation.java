/*
package DAO;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import DB.Connexion;
import modele.reservation;



public class DAReservation {

	public void addRservation(reservation r){
        try {
              PreparedStatement ps = Connexion.getPreparedStatement("insert into reservation values (?,?,?,?,?,?)");
            
            ps.setDate(1, (java.sql.Date) r.getDateR());
            ps.setDouble(2, r.getMontantPaye());
            ps.setInt(3, r.getIdUser());
            ps.setInt(4, r.getIdUser());
            ps.setInt(5, r.getIdUser());
            ps.setInt(6, r.getIdUser());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DAReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
	
	
    public static List<reservation> getAllReservations(){
        List<reservation> ls = new LinkedList<>();
        
        try {
            ResultSet rs = Connexion.getPreparedStatement("select * from reservation").executeQuery();
            while(rs.next()){
            	reservation r = new reservation(rs.getInt(1), rs.getDate(2), rs.getDouble(3), rs.getInt(4), rs.getInt(5) , rs.getInt(6), rs.getInt(7));
                ls.add(r);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DAReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    
    public static List<reservation> getReservationById(int id){
        List<reservation> ls = new LinkedList<>();
        String sql = "select * from reservation where idR = " +id;
        try {
            ResultSet rs = Connexion.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
            	reservation n = new reservation(rs.getInt(1), rs.getDate(2), rs.getDouble(3), rs.getInt(4), rs.getInt(5) , rs.getInt(6), rs.getInt(7));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DAReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    
    public void editReservation(int idR, Date dateR, double montantPaye, int idUser, int codeVoyageReservation,int codeVisiteTourReservation, int idActiviteReservation){
        try {
            String sql = "update reservation SET dateR = ?, montantPaye = ?, idUser = ?, codeVoyageReservation = ?, codeVisiteTourReservation = ?, idActiviteReservation = ?" + " where idR = ?";
            PreparedStatement ps= Connexion.getPreparedStatement(sql);
            ps.setDate(1,(java.sql.Date) dateR);
            ps.setDouble(2, montantPaye);
            ps.setInt(3, idUser);
            ps.setInt(4, codeVoyageReservation);
            ps.setInt(5, codeVisiteTourReservation);
            ps.setInt(6, idActiviteReservation);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DAReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    
    public void deleteReservation(int id){
        try {
            String sql = "delete reservation where idR = ?";
            PreparedStatement ps = Connexion.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DAReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
	
}


*/
