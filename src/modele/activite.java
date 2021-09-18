package modele;

public class activite {

	private int idA;
	private String typeA;
	private String descriptionA;
	private int idVilleA;
	
	
	public activite() {
		
	}


	public activite(String typeA, String descriptionA, int idVilleA) {
		super();
		this.typeA = typeA;
		this.descriptionA = descriptionA;
		this.idVilleA = idVilleA;
	}


	public int getIdA() {
		return idA;
	}


	public void setIdA(int idA) {
		this.idA = idA;
	}


	public String getTypeA() {
		return typeA;
	}


	public void setTypeA(String typeA) {
		this.typeA = typeA;
	}


	public String getDescriptionA() {
		return descriptionA;
	}


	public void setDescriptionA(String descriptionA) {
		this.descriptionA = descriptionA;
	}


	public int getIdVilleA() {
		return idVilleA;
	}


	public void setIdVilleA(int idVilleA) {
		this.idVilleA = idVilleA;
	}
	
	
	
	
}
