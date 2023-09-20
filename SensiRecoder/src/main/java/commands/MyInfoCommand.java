package commands;

import java.util.ArrayList;

import beans.DeviceBean;
import beans.UserBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebRequestContext;
import context.WebResponseContext;
import dao.SensiDao;

public class MyInfoCommand extends AbstractCommand {
	public ResponseContext execute() {
		
		ArrayList result = null;
		
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		UserBean bean = ((WebRequestContext)reqc).getUserBeanInSession();
		
		
		System.out.println(bean.getUserName());
		
		String sql = "select * from devicetable where uname = '" + bean.getUserName() + "'";
		
		SensiDao sd = new SensiDao();
		
		result = sd.select(sql);
		
		System.out.println(result);
		
		DeviceBean device = new DeviceBean();
		
		device.setUserName((String) result.get(0));
		device.setMouse((String) result.get(1));
		device.setMousePad((String) result.get(2));
		device.setMouseSole((String) result.get(3));
		device.setMonitor((String) result.get(4));
		
		System.out.println(device.getUserName());
		
		resc.setTarget("mypage");
		
		return resc;
	}
}
		
		