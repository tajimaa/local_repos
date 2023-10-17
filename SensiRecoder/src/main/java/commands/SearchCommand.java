package commands;

import java.util.ArrayList;

import beans.DeviceBean;
import beans.SensiBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;
import dao.DevicetableDao;
import dao.SensiDao;

public class SearchCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		String game = reqc.getParameter("game")[0];
		System.out.println("searchcommand:"+game);

		SensiDao sensidao = new SensiDao();
		DevicetableDao deviceDao = new DevicetableDao();
		
		ArrayList<SensiBean> list = sensidao.selectUser(game);
		DeviceBean devicebean = new DeviceBean();
		ArrayList<DeviceBean> result = new ArrayList<>();
		
		for (int i=0; i < list.size(); i++) {
			SensiBean bean= list.get(i);

			result.add(deviceDao.selectByUsername(bean.getuName()));
		}
		
		System.out.println("listsize; "+list.size());
		
		resc.setResult(result);
		resc.setTarget("/userspage");
		return resc;
	}
}
