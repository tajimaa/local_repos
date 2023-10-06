package commands;

import java.util.ArrayList;

import beans.AllBean;
import beans.UserBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebRequestContext;
import context.WebResponseContext;
import dao.SensiDao;

public class MyInfoCommand extends AbstractCommand {
	public ResponseContext execute() {
		
		ArrayList<AllBean> result = new ArrayList<AllBean>();
		
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		UserBean bean = ((WebRequestContext)reqc).getUserBeanInSession();
		
		System.out.println(bean.getUserName());
		
		String name = bean.getUserName();
		
		try {
			
			SensiDao sd = new SensiDao();
			
			String sql = "select * from sensitable s left join devicetable d on s.uName = d.uName where d.uName = '" + name + "'";
			
			result = sd.selectAll(sql);
			System.out.println(result.size());
			
			if (result.isEmpty()) {
				resc.setTarget("/mypage");
			return resc;
			}
			
//			ArrayList<AllBean> info = new ArrayList<AllBean>();
//			
//			info.setUserName((String) deviceResult.get(0));
//			info.setMouse((String) deviceResult.get(1));
//			info.setMousePad((String) deviceResult.get(2));
//			info.setMouseSole((String) deviceResult.get(3));
//			info.setMonitor((String) deviceResult.get(4));
//			
//			System.out.println(info.getUserName());
//			System.out.println(deviceResult.get(2));
//			
//			String sql2 = "select * from sensitable where uname ='" + name + "'";
//			sensiResult = sd.select(sql2);
//			System.out.println(sensiResult);
//			
//			
//			
//			info.setUserName((String)sensiResult.get(0));
//			info.setRegisterd((String)sensiResult.get(1));
//			info.setGame((String)sensiResult.get(2));
//			info.setSensitivity((String)sensiResult.get(3));
//			info.setCm180((String)sensiResult.get(4));
//			info.setCm360((String)sensiResult.get(5));
		} catch (Exception e) {
			e.printStackTrace();
		}
		resc.setResult(result);
		resc.setTarget("/mypage");
		
		return resc;
	}
}
		

//
		