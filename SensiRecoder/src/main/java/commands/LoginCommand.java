package commands;

import beans.UserBean;
import login.LoginLogic;
import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;

public class LoginCommand extends AbstractCommand {
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		String name = reqc.getParameter("id")[0];
		String pass = reqc.getParameter("password")[0];
		
		if (LoginLogic.isLoggedIn(name, pass)) {
			UserBean bean = new UserBean();
			bean.setUserName(name);
			resc.setResult(bean);
		}
		
		
		UserBean bean = new UserBean();
		
		
		
		resc.setResult(bean);
		
		resc.setTarget("show");
		return resc;
	}
}