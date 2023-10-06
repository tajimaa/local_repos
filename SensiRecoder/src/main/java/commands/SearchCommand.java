package commands;

import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;

public class SearchCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		String game = reqc.getParameter("game")[0];
		
		
		resc.setTarget("/homepage");
		return resc;
	}

}
