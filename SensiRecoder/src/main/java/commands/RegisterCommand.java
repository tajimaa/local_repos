package commands;

import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;
import dao.SensiDao;

public class RegisterCommand extends AbstractCommand {
	public ResponseContext execute() {
		
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		String name = reqc.getParameter("id")[0];
		String pass = reqc.getParameter("password")[0];
		
		String sql = "insert into usertable values ('" + name + "','" + pass + "')";
		
		SensiDao dao = new SensiDao();
		
		dao.executeUpdate(sql);
		
		resc.setTarget("/isloginCommand");
		
		return resc;
	}
}