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
		
		ArrayList<String> deviceResult = null;
		ArrayList<String> sensiResult = null;
		
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		UserBean bean = ((WebRequestContext)reqc).getUserBeanInSession();
		
		System.out.println(bean.getUserName());
		
		String name = bean.getUserName();
		String sql = "select * from devicetable where uname = '" + name + "'";
		
		SensiDao sd = new SensiDao();
		
		deviceResult = sd.select(sql);
		System.out.println(deviceResult);
		
		if (deviceResult.isEmpty()) {
			resc.setTarget("/mypage");
		return resc;
		}
		
		DeviceBean device = new DeviceBean();
		
		device.setUserName((String) deviceResult.get(0));
		device.setMouse((String) deviceResult.get(1));
		device.setMousePad((String) deviceResult.get(2));
		device.setMouseSole((String) deviceResult.get(3));
		device.setMonitor((String) deviceResult.get(4));
		
		System.out.println(device.getUserName());
		System.out.println(deviceResult.get(2));
		
//		String sql2 = "select * from sensitable where uname ='" + name + "'";
//		sensiResult = sd.select(sql2);
//		System.out.println(sensiResult);
//		
//		SensiBean sensi = new SensiBean();
//		
//		sensi.setuName((String)sensiResult.get(0));
//		sensi.setRegisterd((String)sensiResult.get(1));
//		sensi.setGame((String)sensiResult.get(2));
//		sensi.setSensitivity((String)sensiResult.get(3));
//		sensi.setCm180((String)sensiResult.get(4));
//		sensi.setCm360((String)sensiResult.get(5));
		
		resc.setResult(device);
//		resc.setResult(sensi);
		
		resc.setTarget("/mypage");
		
		return resc;
	}
}
		
		