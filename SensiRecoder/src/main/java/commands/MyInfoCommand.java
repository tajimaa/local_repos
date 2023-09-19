package commands;

import java.util.ArrayList;

import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;
import dao.SensiDao;

public class MyInfoCommand extends AbstractCommand {
	public ResponseContext execute() {
		
		ArrayList result = null;
		
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		String user = reqc.getParameter("id")[0];
		
		String sql = "select * from devicetable where name = '" + user + "'";
		
		SensiDao sd = new SensiDao();
		
		result = sd.select(sql);
		
		System.out.println(result);
		
		resc.setTarget("mypage");
		
		return resc;
	}
}
		
		