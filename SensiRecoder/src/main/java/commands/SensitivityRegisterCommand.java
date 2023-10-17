package commands;

import beans.UserBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebRequestContext;
import context.WebResponseContext;
import dao.SensiDao;

public class SensitivityRegisterCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		System.out.println("せんしれじすたーきてるよ");
		
		UserBean uBean = ((WebRequestContext)reqc).getUserBeanInSession();
		
		String uName;
		
		try {
			uName = uBean.getUserName();
		} catch (NullPointerException e) {
			resc.setTarget("/loginpage");
			return resc;
		}
		String game = reqc.getParameter("game")[0];
		double sensi = Double.parseDouble(reqc.getParameter("sensi")[0]);
		int dpi = Integer.parseInt(reqc.getParameter("dpi")[0]);
		double cm180 = calc.GameSensitivity.cm180(dpi, game, sensi);
		double cm360 = calc.GameSensitivity.cm360(dpi, game, sensi);
		
		System.out.println(uName);
		System.out.println(game);
		System.out.println(sensi);
		System.out.println(dpi);
		System.out.println(cm180);
		System.out.println(cm360);
		
		
		
		String sql = "insert into sensitable values('" + uName + "', sysdate, '" + game + "', " + sensi + ", " + dpi + ", " + cm180 + ", " + cm360 + ")";
		
		SensiDao sDao = new SensiDao();
		
		sDao.executeUpdate(sql);
		
		resc.setTarget("/homepage");
		return resc;
	}

}
