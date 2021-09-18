package modele;

public class circuit {

	private int codeC;
	private String dureeC;
	private String villesC;
	private int idUserC;
	private int idVilleC;
	
	
	public circuit() {
		
	}


	public circuit(String dureeC, String villesC, int idUserC, int idVilleC) {
		
		this.dureeC = dureeC;
		this.villesC = villesC;
		this.idUserC = idUserC;
		this.idVilleC = idVilleC;
	}


	public int getCodeC() {
		return codeC;
	}


	public void setCodeC(int codeC) {
		this.codeC = codeC;
	}


	public String getDureeC() {
		return dureeC;
	}


	public void setDureeC(String dureeC) {
		this.dureeC = dureeC;
	}


	public String getVillesC() {
		return villesC;
	}


	public void setVillesC(String villesC) {
		this.villesC = villesC;
	}


	public int getIdUserC() {
		return idUserC;
	}


	public void setIdUserC(int idUserC) {
		this.idUserC = idUserC;
	}


	public int getIdVilleC() {
		return idVilleC;
	}


	public void setIdVilleC(int idVilleC) {
		this.idVilleC = idVilleC;
	}


	
	
	
	
	
}
