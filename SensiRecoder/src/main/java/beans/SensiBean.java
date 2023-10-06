package beans;

import java.io.Serializable;

public class SensiBean implements Serializable {
	String uName;
	String game;
	String sensitivity;
	String dpi;
	String cm180;
	String cm360;
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
	public String getSensitivity() {
		return sensitivity;
	}
	public void setSensitivity(String sensitivity) {
		this.sensitivity = sensitivity;
	}
	public String getDpi() {
		return dpi;
	}
	public void setDpi(String dpi) {
		this.dpi = dpi;
	}
	public String getCm180() {
		return cm180;
	}
	public void setCm180(String cm180) {
		this.cm180 = cm180;
	}
	public String getCm360() {
		return cm360;
	}
	public void setCm360(String cm360) {
		this.cm360 = cm360;
	}
	public String getRegisterd() {
		return registerd;
	}
	public void setRegisterd(String registerd) {
		this.registerd = registerd;
	}
	

}