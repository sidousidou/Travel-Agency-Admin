package modele;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class bdfunctions {
	Connection connx=null;
	public void AjouterUtilisateur(user Uti) {
		PreparedStatement statement=null;
		//LoadDataBase();
			
			try {
				Class.forName("org.postgresql.Driver");
				
			}catch(ClassNotFoundException e) {
			}
			//connexion à la base
		
	
			String url = "jdbc:postgresql://localhost/travelagencydb";
			String utilisateur = "postgres";
			String motDePasse = "taik6991";
			ResultSet resultat=null;
			try {
				connx=DriverManager.getConnection(url,utilisateur,motDePasse);
				System.out.println("passer connexion db");
				
		
		
			 statement=connx.prepareStatement("INSERT INTO public.\"user\"(\r\n" + 
			 		"	 nom, prenom, numteleph, age, email, motdepasse, adresse, type)\r\n" + 
			 		"	VALUES ( ?, ?, ?, ?, ?, ?, ?, ?);");
			statement.setString(1, Uti.getNom());
			statement.setString(2, Uti.getPrenom());
			statement.setString(3, Uti.getNumteleph());
			statement.setString(4, Uti.getAge());
			statement.setString(5, Uti.getEmail());
			statement.setString(6, Uti.getMotp());
			statement.setString(7, Uti.getAdresse());
			statement.setString(8, Uti.getType());
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			finally {
			//fermeture de la base
			try{
				if(resultat !=null)
					resultat.close();
				if(statement!=null)
					statement.close();
				if(connx !=null)
					connx.close();
				
			}catch(SQLException ignore){
				 
			}
		
		
		}
	

	

			}

	
	public List<user> RecupererInformation(){
		List<user> user=new ArrayList<user>();
		
		try {
			Class.forName("org.postgresql.Driver");
			
		}catch(ClassNotFoundException e) {
		}
		//connexion à la base
	
        Statement stat=null;
		String url = "jdbc:postgresql://localhost/travelagencydb";
		String utilisateur = "postgres";
		String motDePasse = "taik6991";
		ResultSet resultat=null;
		try {
			connx=DriverManager.getConnection(url,utilisateur,motDePasse);
			System.out.println("passer connexion db");
			stat=connx.createStatement();
		    resultat=stat.executeQuery("select email, motdepasse from user");
		
		while (resultat.next()) {
			String email=resultat.getString("email");
			String mp=resultat.getString("motdepasse");
			user ut=new user();
			ut.setEmail(email);
			ut.setMotp(mp);
			user.add(ut);
		}
		
		
		
		
		
		
		}catch (Exception e) {
			
		}finally {
			//fermeture de la base
			try{
				if(resultat !=null)
					resultat.close();
				if(stat!=null)
					stat.close();
				if(connx !=null)
					connx.close();
				
			}catch(SQLException ignore){
				 
			}
	
		
		
	}
		
		return user;
}
	

}
