package commands;

import java.util.ArrayList;

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
		
		resc.setTarget("mypage");
		
		return resc;
	}
}
		
		