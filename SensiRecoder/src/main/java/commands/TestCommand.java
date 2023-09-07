package commands;

import beans.UserBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;

public class TestCommand extends AbstractCommand {
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		
		String param1 = reqc.getParameter("value1")[0];
		
		UserBean bean = new UserBean();
		
		ResponseContext resc = new WebResponseContext();
		
		resc.setResult(bean);
		
		resc.setTarget("show");
		return resc;
	}
}