package dto;

public class UsertableDto {
	String user = null;
	String pass = null;
    
	public UsertableDto(String user, String pass) {
		setUser(user);
		setPass(pass);
	}
	
	//seter

    public void setUser(String user) {
        this.user = user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    //geter
    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }
}
