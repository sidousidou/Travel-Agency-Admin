package modele;

import java.util.Date;
//import java.util.Objects;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class reservation {
	
	//@Id
	//@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idR;
	private Date dateR;
	private double montantPayeR;
	private int idUser;
	private int codeVoyR;
	private int codeVTR;
	private int idActR;
	
	
public reservation() {
		
	}
	
	
	

	



//	public reservation( Date dateR, double montantPayeR, int idUser, int codeVoyR) {
//		
//		this.dateR = dateR;
//		this.montantPayeR = montantPayeR;
//		this.idUser = idUser;
//		this.codeVoyR = codeVoyR;
//	}




	public reservation(Date dateR, double montantPayeR, int idUser, int codeVoyR, int codeVTR, int idActR) {
		super();
		this.dateR = dateR;
		this.montantPayeR = montantPayeR;
		this.idUser = idUser;
		this.codeVoyR = codeVoyR;
		this.codeVTR = codeVTR;
		this.idActR = idActR;
	}


	public int getIdR() {
		return idR;
	}


	public void setIdR(int idR) {
		this.idR = idR;
	}


	public Date getDateR() {
		return dateR;
	}


	public void setDateR(Date dateR) {
		this.dateR = dateR;
	}


	public double getMontantPayeR() {
		return montantPayeR;
	}


	public void setMontantPayeR(double montantPayeR) {
		this.montantPayeR = montantPayeR;
	}


	public int getIdUser() {
		return idUser;
	}


	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}


	public int getCodeVoyR() {
		return codeVoyR;
	}


	public void setCodeVoyR(int codeVoyR) {
		this.codeVoyR = codeVoyR;
	}


	public int getCodeVTR() {
		return codeVTR;
	}


	public void setCodeVTR(int codeVTR) {
		this.codeVTR = codeVTR;
	}


	public int getIdActR() {
		return idActR;
	}


	public void setIdActR(int idActR) {
		this.idActR = idActR;
	}


	@Override
	public String toString() {
		return "reservation [idR=" + idR + ", dateR=" + dateR + ", montantPayeR=" + montantPayeR + ", idUser=" + idUser
				+ ", codeVoyR=" + codeVoyR + ", codeVTR=" + codeVTR + ", idActR=" + idActR + "]";
	}
	
	
	
	
	
	
	
	
	
}
