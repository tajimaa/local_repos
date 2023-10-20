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
		if(bean == null) {
			resc.setTarget("/homepage");
			return resc;
		}
		System.out.println(bean.getUserName());
		
		String name = bean.getUserName();
		
		try {
			
			SensiDao sd = new SensiDao();
			
			String sql = "select * from sensitable s left join devicetable d on s.uName = d.uName where d.uName = '" + name + "' order by registered desc";
			
			result = sd.selectAll(sql);
			System.out.println(result.size());
			
			if (result.isEmpty()) {
				resc.setTarget("/mypage");
			return resc;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		resc.setResult(result);
		resc.setTarget("/mypage");
		
		return resc;
	}
}
		
		