package commands;

import java.util.ArrayList;

import beans.AllBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;
import dao.DevicetableDao;

public class SearchCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		DevicetableDao deviceDao = new DevicetableDao();
		ArrayList<AllBean> result = new ArrayList<>();
		
		String game = reqc.getParameter("game")[0];
		if (game.equals("default")) {
			resc.setTarget("sensi/userListCommand");
			
		} else {
			AllBean bean = deviceDao.selectByUsername(game);
			
			if(bean != null) {
				result.add(bean);
			}
			
			resc.setResult(result);
			resc.setTarget("/userspage");
		}

		return resc;
	}
}
