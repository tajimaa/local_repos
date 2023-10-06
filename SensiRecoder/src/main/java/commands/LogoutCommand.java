package commands;

import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;

public class LogoutCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		reqc.InvalidateSession();
		
		resc.setTarget("/homepage");
		return resc;
	}
}
