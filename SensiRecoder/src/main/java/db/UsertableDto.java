package db;

public class UsertableDto {
	String user = null;
	String pass = null;
    
	UsertableDto(String user, String pass) {
		setUser(user);
		setPass(pass);
	}
	
	// セッター（setter）メソッド

    public void setUser(String user) {
        this.user = user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    // ゲッター（getter）メソッド

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }
}
