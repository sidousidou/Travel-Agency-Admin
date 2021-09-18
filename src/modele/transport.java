package modele;

public class transport {

	private int idT;
	private String typeT;
	private int nbrPlaceT;
	
	
	public transport(String typeT, int nbrPlaceT) {
		
		this.typeT = typeT;
		this.nbrPlaceT = nbrPlaceT;
	}


	public transport() {
		
	}


	public int getIdT() {
		return idT;
	}


	public void setIdT(int idT) {
		this.idT = idT;
	}


	public String getTypeT() {
		return typeT;
	}


	public void setTypeT(String typeT) {
		this.typeT = typeT;
	}


	public int getNbrPlaceT() {
		return nbrPlaceT;
	}


	public void setNbrPlaceT(int nbrPlaceT) {
		this.nbrPlaceT = nbrPlaceT;
	}
	
	
	
	
	
	
}
