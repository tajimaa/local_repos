package commands;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import context.ResponseContext;
import dao.SensiDao;
		

public class DeviceRegisterCommand extends AbstractCommand {
	
	PreparedStatement st = null;
	
	SensiDao sd = new SensiDao();
	
	public ResponseContext execute() {
		
		Connection cn = sd.getConnection(); 
		
		
		for (int i = 0; i < 5; i++) {
		
			String sql = "update set devicetable(?) = (?)";
			
			try {
				PreparedStatement ps = cn.prepareStatement(sql);
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			
			SensiDao sd = new SensiDao();
		}
		
		
		
	}
}