package beans;

import java.io.Serializable;

public class SensiBean implements Serializable {
	String uName;
	String game;
	double sensitivity;
	int dpi;
	double cm180;
	double cm360;
	String registerd;
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getGame() {
		return game;
	}
	public void setGame(String game) {
		this.game = game;
	}
	public double getSensitivity() {
		return sensitivity;
	}
	public void setSensitivity(double sensitivity) {
		this.sensitivity = sensitivity;
	}
	public int getDpi() {
		return dpi;
	}
	public void setDpi(int dpi) {
		this.dpi = dpi;
	}
	public double getCm180() {
		return cm180;
	}
	public void setCm180(double cm180) {
		this.cm180 = cm180;
	}
	public double getCm360() {
		return cm360;
	}
	public void setCm360(double cm360) {
		this.cm360 = cm360;
	}
	public String getRegisterd() {
		return registerd;
	}
	public void setRegisterd(String registerd) {
		this.registerd = registerd;
	}

}