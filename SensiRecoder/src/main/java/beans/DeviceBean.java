package beans;

import java.io.Serializable;

public class DeviceBean implements Serializable {
	private String userName;
	private String mouse;
	private String mousePad;
	private String mouseSole;
	private String monitor;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMouse() {
		return mouse;
	}
	public void setMouse(String mouse) {
		this.mouse = mouse;
	}
	public String getMousePad() {
		return mousePad;
	}
	public void setMousePad(String mousePad) {
		this.mousePad = mousePad;
	}
	public String getMouseSole() {
		return mouseSole;
	}
	public void setMouseSole(String mouseSole) {
		this.mouseSole = mouseSole;
	}
	public String getMonitor() {
		return monitor;
	}
	public void setMonitor(String monitor) {
		this.monitor = monitor;
	}
}
