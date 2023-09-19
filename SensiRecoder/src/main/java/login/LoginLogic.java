package login;

import dao.UsertableDao;
import dto.UsertableDto;

public class LoginLogic {
	public static boolean isLoggedIn(String user, String pass) {
		boolean flag = false;
		UsertableDao dao = new UsertableDao();
		UsertableDto dto = dao.findRecord(user);
		System.out.println(user);
		String hashedpass = dto.getPass();
		
		System.out.println("loginlogic :" + dto.getPass());
		
		if(dto != null && user.equals(dto.getUser()) && Encryption.check(pass, hashedpass)) {
			flag = true;
		}
		return flag;
	}
}
