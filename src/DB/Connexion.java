package DB;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import com.mysql.jdbc.Connection;

public class Connexion {
	
	public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps =  null;
        Connection con=null;
        ResultSet res;
        
        try {
        Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
    		// TODO: handle exception
    	}
        String url = "jdbc:mysql://localhost:3306/travelagencydb";
        String user = "root";
        String pass = "sidouhaha";
        
        try {
        
        	
        con = (Connection) DriverManager.getConnection(url, user, pass);
        ps = con.prepareStatement(sql);
        
        } catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
        
        return ps;
    }
	
	
	
	
	
	//Check connections.
    /*public static void main(String[] args) throws ClassNotFoundException, SQLException {
        getPreparedStatement("select * form utilisateur");
        System.out.println("Connected ?");
    }*/

	
	
	
	
}
