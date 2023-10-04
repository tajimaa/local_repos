package commands;

import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;

public class SensitivityRegisterCommand extends AbstractCommand {

	@Override
	public ResponseContext execute() {
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		System.out.println("せんしれじすたーきてるよ");
		
//		String game = reqc.getParameter("game")[0];
//		double sensi = Double.parseDouble(reqc.getParameter("sensi")[0]);
//		int dpi = Integer.parseInt(reqc.getParameter("dpi")[0]);
//		
//		
//		
//		ResultBean bean = new ResultBean();
//		bean.setCm180(calc.GameSensitivity.cm180(dpi, game, sensi));
//		bean.setCm360(calc.GameSensitivity.cm360(dpi, game, sensi));
//		resc.setResult(bean);
		resc.setTarget("/homepage");
		return resc;
	}

}
