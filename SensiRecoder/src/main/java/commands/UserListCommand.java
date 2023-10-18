package commands;

import java.util.ArrayList;

import beans.AllBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;
import dao.SensiDao;

public class UserListCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		SensiDao sensidao = new SensiDao();

		ArrayList<AllBean> res = sensidao.selectAll();
		ArrayList<AllBean> result = new ArrayList<>();
		
		String userName = null;
		for (AllBean bean: res) {
			if (!bean.getUserName().equals(userName)) {
				result.add(bean);
			}
			userName = bean.getUserName();
		}
		
		resc.setResult(result);
		resc.setTarget("/userspage");
		
		return resc;
	}
}
