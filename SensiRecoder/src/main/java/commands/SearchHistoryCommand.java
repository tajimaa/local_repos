package commands;

import java.util.ArrayList;

import beans.AllBean;
import beans.UserBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebRequestContext;
import context.WebResponseContext;
import dao.SensiDao;

public class SearchHistoryCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		SensiDao sensiDao = new SensiDao();
		ArrayList<AllBean> result = new ArrayList<AllBean>();
		UserBean ubean = ((WebRequestContext)reqc).getUserBeanInSession();
		
		String game = reqc.getParameter("game")[0];
		String name = ubean.getUserName();
		System.out.println(name);
		String sql = "select * from sensitable s left join devicetable d on s.uName = d.uName where d.uName = '" + name + "' order by registered desc";
		String sql2 = "select * from sensitable s left join devicetable d on s.uName = d.uName where s.uName = '" + name + "' and game = ? order by registered desc";
		if (game.equals("default")) {
			System.out.println(sql);
			result = sensiDao.selectAll(sql);
			resc.setResult(result);
			resc.setTarget("/mypage");
			
		} else {
			result = sensiDao.selectByGame(sql2, game);
			
			if(result.size() != 0) {
				resc.setResult(result);
				System.out.println("size: "+ result.size());
				resc.setTarget("/mypage");
			} else {
				resc.setTarget("sensi/myInfoCommand");
			}
		}

		return resc;
	}
}
