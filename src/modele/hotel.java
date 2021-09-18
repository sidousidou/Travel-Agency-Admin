package modele;

public class hotel {

	int idH;
	String adresseH;
	int nbrChambreH;
	String numTeleH;
	String classementH;
	String siteWebH;
	
	
	public hotel() {
		
	}
	
	public hotel(String adresseH, int nbrChambreH, String numTeleH, String classementH, String siteWebH) {
		
		this.adresseH = adresseH;
		this.nbrChambreH = nbrChambreH;
		this.numTeleH = numTeleH;
		this.classementH = classementH;
		this.siteWebH = siteWebH;
	}


	public int getIdH() {
		return idH;
	}


	public void setIdH(int idH) {
		this.idH = idH;
	}


	public String getAdresseH() {
		return adresseH;
	}


	public void setAdresseH(String adresseH) {
		this.adresseH = adresseH;
	}


	public int getNbrChambreH() {
		return nbrChambreH;
	}


	public void setNbrChambreH(int nbrChambreH) {
		this.nbrChambreH = nbrChambreH;
	}


	public String getNumTeleH() {
		return numTeleH;
	}


	public void setNumTeleH(String numTeleH) {
		this.numTeleH = numTeleH;
	}


	public String getClassementH() {
		return classementH;
	}


	public void setClassementH(String classementH) {
		this.classementH = classementH;
	}


	public String getSiteWebH() {
		return siteWebH;
	}


	public void setSiteWebH(String siteWebH) {
		this.siteWebH = siteWebH;
	}
	
	
	
	
	
}
