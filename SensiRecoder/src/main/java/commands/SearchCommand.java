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
			ArrayList<AllBean> list = deviceDao.selectAllByUsername(game);
			
			String userName = null;
			if(list != null) {
				for(AllBean bean: list) {
					if (!bean.getUserName().equals(userName)) {
						result.add(bean);
					}
					userName = bean.getUserName();
				}
			}
			
			resc.setResult(result);
			resc.setTarget("/userspage");
		}

		return resc;
	}
}
