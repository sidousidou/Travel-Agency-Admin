package modele;

public class restaurant {

	private int idRes;
	private String adresseR;
	private String numTeleR;
	private String classementR;
	
	
	public restaurant(String adresseR, String numTeleR, String classementR) {
		super();
		this.adresseR = adresseR;
		this.numTeleR = numTeleR;
		this.classementR = classementR;
	}


	public restaurant() {
		super();
	}


	public int getIdRes() {
		return idRes;
	}


	public void setIdRes(int idRes) {
		this.idRes = idRes;
	}


	public String getAdresseR() {
		return this.adresseR;
	}


	public void setAdresseR(String adresseR) {
		this.adresseR = adresseR;
	}


	public String getNumTeleR() {
		return numTeleR;
	}


	public void setNumTeleR(String numTeleR) {
		this.numTeleR = numTeleR;
	}


	public String getClassementR() {
		return classementR;
	}


	public void setClassementR(String classementR) {
		this.classementR = classementR;
	}
	
	
	
	
	
	
	
	
}
