package login;

<<<<<<< HEAD
import dao.UsertableDao;
import dto.UsertableDto;

public class LoginLogic {
	public boolean login(String user, String pass) {
		boolean flag = false;
		UsertableDao dao = new UsertableDao();
		UsertableDto dto = dao.findRecord(user);
		
		if(user.equals(dto.getUser()) && pass.equals(dto.getPass())) {
			flag = true;
		}
		
=======
public class LoginLogic {
	public static boolean doLogin(String name, String pass) {
		boolean flag = false;
>>>>>>> origin/taima
		return flag;
	}
}
