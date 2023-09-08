package commands;

import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;

public class HomeCommand extends AbstractCommand {
	RequestContext reqc = getRequestContext();
	ResponseContext resc = new WebResponseContext();
	@Override
	public ResponseContext execute() {
		resc.setTarget("homepage");
		return resc;
	}
}
