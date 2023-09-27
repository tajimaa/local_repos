package commands;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import context.RequestContext;
import context.ResponseContext;
import context.WebResponseContext;
import dao.SensiDao;
		

public class DeviceRegisterCommand extends AbstractCommand {
	
	PreparedStatement st = null;
	
	SensiDao sd = new SensiDao();
	
	public ResponseContext execute() {
		
		System.out.println("こっちきてるよ");
		
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		String[] devices = {"uName", "mouse", "mousepad", "mousesole", "monitor"};
		
		try {
			
			Connection cn = sd.getConnection();
		
			for (int i = 1; i < 4; i++) {
		
				String sql = "update devicetable set" + devices[i] + " = ? where uname = ?";
				
				String device = devices[i];
				
				System.out.println(device);
				
				String parameter = reqc.getParameter(device)[0];
				
				System.out.println(parameter);
			
				PreparedStatement ps = cn.prepareStatement(sql);
				ps.setString(1, parameter);
				ps.setString(2, reqc.getParameter("uName")[0]);
				
				if (parameter == null) {
					continue;
				}
				
				sd.executeUpdate(sql);
				
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		resc.setTarget("/sensi/myInfoCommand");
		
		return resc;
	}
		
}
