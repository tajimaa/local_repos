package commands;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.DeviceBean;
import beans.UserBean;
import context.RequestContext;
import context.ResponseContext;
import context.WebRequestContext;
import context.WebResponseContext;
import dao.SensiDao;		

public class DeviceRegisterCommand extends AbstractCommand {
	
	PreparedStatement st = null;
	
	SensiDao sd = new SensiDao();
	
	public ResponseContext execute() {
		
		System.out.println("こっちきてるよ");
		
		RequestContext reqc = getRequestContext();
		ResponseContext resc = new WebResponseContext();
		
		UserBean userBean = ((WebRequestContext)reqc).getUserBeanInSession();
		
		String uName = userBean.getUserName();
		System.out.println(uName);
		
		ArrayList<String> deviceResult = null;
		
		DeviceBean bean = new DeviceBean();
		System.out.println(bean.getUserName());
		
		String[] devices = {"mouse", "mousePad", "mouseSole", "monitor"};
		
		try {
			
			Connection cn = sd.getConnection();
		
			for (int i = 0; i < 4; i++) {
			    String sql = "UPDATE devicetable SET " + devices[i] + " = ? WHERE uname = ?";
			    String device = devices[i];
			    String parameter = reqc.getParameter(device)[0];
			    
			    if (parameter == null) {
			        // ここで何らかのデフォルト値を設定するか、処理をスキップするかを検討
			        continue;
			    }
			    

		        st = cn.prepareStatement(sql);
		        st.setString(1, parameter);
		        st.setString(2, uName);
		        st.executeUpdate(); 
			}
			deviceResult = sd.select("select * from devicetable where uname = '" + uName + "'");
			
			bean.setUserName((String) deviceResult.get(0));
			bean.setMouse((String) deviceResult.get(1));
			bean.setMousePad((String) deviceResult.get(2));
			bean.setMouseSole((String) deviceResult.get(3));
			bean.setMonitor((String) deviceResult.get(4));
			
			resc.setResult(bean);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resc.setTarget("/sensi/myInfoCommand");
		
		return resc;
	}
		
}
