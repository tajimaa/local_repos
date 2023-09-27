package commands;


import beans.UserBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebRequestContext;
import context.WebResponseContext;
import login.LoginLogic;

public class LoginCommand extends AbstractCommand {
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		String name = reqc.getParameter("id")[0];
		String pass = reqc.getParameter("password")[0];
		
		if (LoginLogic.isLoggedIn(name, pass)) {
			UserBean bean = new UserBean();
			bean.setUserName(name);
			((WebRequestContext) reqc).setUserBeanInSession(bean);;
			resc.setTarget("/homepage");
		} else {
			resc.setResult("miss");
			resc.setTarget("/loginpage");
		}
		
		return resc;
	}
}