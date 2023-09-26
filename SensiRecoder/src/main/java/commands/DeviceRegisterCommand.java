package commands;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

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
		
		ArrayList<String> keys = new ArrayList<String>();
		
		keys.add("uName");
		keys.add("mouse");
		keys.add("mousePad");
		keys.add("mouseSole");
		keys.add("monitor");
		
		try {
			
			Connection cn = sd.getConnection();
		
			for (int i = 0; i < 5; i++) {
		
				String sql = "update set devicetable(?) = (?)";
				
				String parameter = reqc.getParameter(keys.get(i))[0];
			
				PreparedStatement ps = cn.prepareStatement(sql);
				ps.setString(1, keys.get(i));
				ps.setString(2, parameter);
				
				if (parameter == null) {
					continue;
				}
				
				sd.executeUpdate(sql);
				
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		resc.setTarget("/myInfoCommand");
		
		return resc;
	}
		
}
