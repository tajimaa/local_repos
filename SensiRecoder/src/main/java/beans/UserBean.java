package beans;

import java.io.Serializable;

import dto.SensiDto;

public class UserBean implements Serializable {
	private String userName = null;
	private SensiDto sensiDto = null;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public SensiDto getSensiDto() {
		return sensiDto;
	}

	public void setSensiDto(SensiDto sensiDto) {
		this.sensiDto = sensiDto;
	}

}
