package modele;

public class ville {

	private int idVille;
	private String nomV;
	
	
	public ville(String nomV) {
		
		this.nomV = nomV;
	}


	public ville() {
		
	}


	public int getIdVille() {
		return idVille;
	}


	public void setIdVille(int idVille) {
		this.idVille = idVille;
	}


	public String getNomV() {
		return nomV;
	}


	public void setNomV(String nomV) {
		this.nomV = nomV;
	}
	
	
	
}
