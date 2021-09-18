/*
package DAO;

import modele.utilisateur;
import DB.Connexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;



public class DataAccess {

	
//	public void autoIncrementIdUser() {
//		PreparedStatement pst1 = Connexion.getPreparedStatement("select max(idU)+1 from utilisateur");
//        ResultSet rs = pst1.executeQuery();
//        String user_id ="" ;
//        while(rs.next())
//        {
//            user_id = rs.getString(1);
//        }
//        String sql = "insert into artist_reg_ml (id,uname,pwd,email,country) values (?,?,?,?,?)";
//        PreparedStatement pst = conn.prepareStatement(sql);
//        pst.setString(1, user_id.toString());
//        pst.setString(2, uname);
//        pst.setString(3, pwd);
//        pst.setString(4, email);
//        pst.setString(5, country);
//        int i = pst.executeUpdate();
//	}
	
	
	public void addUtilisateur(utilisateur u){
        try {
              PreparedStatement ps = Connexion.getPreparedStatement("insert into utilisateur(typeU,nomU,emailU,motDePasseU) values (?,?,?,?)");
            //ps.setInt(1, u.getId());
            ps.setString(1, u.getType());
            ps.setString(2, u.getNom());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getMotDePasse());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
	
	
    public static List<utilisateur> getAllUtilisateur(){
        List<utilisateur> ls = new LinkedList<>();
        
        try {
            ResultSet rs = Connexion.getPreparedStatement("select * from utilisateur").executeQuery();
            while(rs.next()){
                utilisateur u = new utilisateur(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(u);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    
    public static List<utilisateur> getUtilisateurById(int id){
        List<utilisateur> ls = new LinkedList<>();
        String sql = "select * from utilisateur where idU = " +id;
        try {
            ResultSet rs = Connexion.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                utilisateur n = new utilisateur(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    
    
    public void editUtilisateur(int id, String type, String nom, String prenom, String email, String motDePasse){
        try {
            String sql = "update utilisateur SET type = ?, nom = ?, eamil = ?, motDePasse = ?" + " where idU = ?";
            PreparedStatement ps= Connexion.getPreparedStatement(sql);
            ps.setString(1, type);
            ps.setString(2, nom);
            ps.setString(3, email);
            ps.setString(4, motDePasse);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    
    public void deleteUtilisateur(int id){
        try {
            String sql = "delete utilisateur where id = ?";
            PreparedStatement ps = Connexion.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

	
	
}

*/
