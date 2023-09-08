package login;

import dao.UsertableDao;
import dto.UsertableDto;

public class LoginLogic {
	public static boolean isLoggedIn(String user, String pass) {
		boolean flag = false;
		UsertableDao dao = new UsertableDao();
		UsertableDto dto = dao.findRecord(user);
		
		if(dto != null && user.equals(dto.getUser()) && pass.equals(dto.getPass())) {
			flag = true;
		}
		return flag;
	}
}
