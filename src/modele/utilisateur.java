package modele;

//import javax.persistence.Column;

public class utilisateur {

	private int idU;
	
	//@Column(name = "typeU", nullable = false)
	private String typeU;
	
	private String nomU;
	private String emailU;
	private String motDePasseU;
 
	public utilisateur() {
		
	}

	
	public utilisateur(String typeU, String nomU, String emailU, String motDePasseU) {
		
		this.typeU = typeU;
		this.nomU = nomU;
		this.emailU = emailU;
		this.motDePasseU = motDePasseU;
	}


	public int getIdU() {
		return idU;
	}


	public void setIdU(int idU) {
		this.idU = idU;
	}


	public String getTypeU() {
		return typeU;
	}


	public void setTypeU(String typeU) {
		this.typeU = typeU;
	}


	public String getNomU() {
		return nomU;
	}


	public void setNomU(String nomU) {
		this.nomU = nomU;
	}


	public String getEmailU() {
		return emailU;
	}


	public void setEmailU(String emailU) {
		this.emailU = emailU;
	}


	public String getMotDePasseU() {
		return motDePasseU;
	}


	public void setMotDePasseU(String motDePasseU) {
		this.motDePasseU = motDePasseU;
	}
	
	
	
	
	
//	public static int getAutoId(String utilisateur,String idU) {
//		Connection conn = null;
//		try {
//			setConnection();
//			Statement stm = conn.createStatement();
//			
//		} catch (SQLException e) {
//			e.getMessage();
//			// TODO: handle exception
//		}
//		
//	}
	
	
}
