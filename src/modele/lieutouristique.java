package modele;

public class lieutouristique {

	private int idLT;
	private String typeLT;
	private String descriptionLT;
	private String nomLT;
	private String adresseLT;
	private int idVilleLT;
	
	
	public lieutouristique(String typeLT, String descriptionLT, String nomLT, String adresseLT, int idVilleLT) {
		
		this.typeLT = typeLT;
		this.descriptionLT = descriptionLT;
		this.nomLT = nomLT;
		this.adresseLT = adresseLT;
		this.idVilleLT = idVilleLT;
	}


	public lieutouristique() {
		
	}


	public int getIdLT() {
		return idLT;
	}


	public void setIdLT(int idLT) {
		this.idLT = idLT;
	}


	public String getTypeLT() {
		return typeLT;
	}


	public void setTypeLT(String typeLT) {
		this.typeLT = typeLT;
	}


	public String getDescriptionLT() {
		return descriptionLT;
	}


	public void setDescriptionLT(String descriptionLT) {
		this.descriptionLT = descriptionLT;
	}


	public String getNomLT() {
		return nomLT;
	}


	public void setNomLT(String nomLT) {
		this.nomLT = nomLT;
	}


	public String getAdresseLT() {
		return adresseLT;
	}


	public void setAdresseLT(String adresseLT) {
		this.adresseLT = adresseLT;
	}


	public int getIdVilleLT() {
		return idVilleLT;
	}


	public void setIdVilleLT(int idVilleLT) {
		this.idVilleLT = idVilleLT;
	}
	
	
	
	
	
	
	
}
