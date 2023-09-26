package commands;

import java.util.ArrayList;

import beans.DeviceBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;
import dao.DevicetableDao;

public class UserListCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		DevicetableDao dao = new DevicetableDao();
		ArrayList<DeviceBean> reslultList = dao.selectAll();
		
		resc.setResult(reslultList);
		resc.setTarget("/userspage");
		
		return resc;
	}
}
