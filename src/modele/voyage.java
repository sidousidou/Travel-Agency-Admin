package modele;

import java.util.*;

public class voyage {

	private int codeV;
	private Date dateDebutV;
	private Date dateFinV;
	private int idUserVoy;
	private int codeCircuitV;
	private int idVilleV;
	
	
	public voyage() {
		super();
	}


	public voyage(Date dateDebutV, Date dateFinV, int idUserVoy, int codeCircuitV, int idVilleV) {
		super();
		this.dateDebutV = dateDebutV;
		this.dateFinV = dateFinV;
		this.idUserVoy = idUserVoy;
		this.codeCircuitV = codeCircuitV;
		this.idVilleV = idVilleV;
	}


	public int getCodeV() {
		return codeV;
	}


	public void setCodeV(int codeV) {
		this.codeV = codeV;
	}


	public Date getDateDebutV() {
		return dateDebutV;
	}


	public void setDateDebutV(Date dateDebutV) {
		this.dateDebutV = dateDebutV;
	}


	public Date getDateFinV() {
		return dateFinV;
	}


	public void setDateFinV(Date dateFinV) {
		this.dateFinV = dateFinV;
	}


	public int getIdUserVoy() {
		return idUserVoy;
	}


	public void setIdUserVoy(int idUserVoy) {
		this.idUserVoy = idUserVoy;
	}


	public int getCodeCircuitV() {
		return codeCircuitV;
	}


	public void setCodeCircuitV(int codeCircuitV) {
		this.codeCircuitV = codeCircuitV;
	}


	public int getIdVilleV() {
		return idVilleV;
	}


	public void setIdVilleV(int idVilleV) {
		this.idVilleV = idVilleV;
	}
	
	
	
	
}
