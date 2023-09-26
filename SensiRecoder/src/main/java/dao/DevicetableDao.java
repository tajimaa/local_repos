package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import beans.DeviceBean;
import db.OracleManager;

public class DevicetableDao {
	private static final String SELECT_ALL = "select * from devicetable";
	private static final String DB_USER = "sensi";
	private static final String DB_PASS = "sensi";
	
    OracleManager om = new OracleManager();
    
    Connection cn = null;
    Statement st = null;
    ResultSet rs = null;
    
	public ArrayList<DeviceBean> selectAll() {
		ArrayList<DeviceBean> result = new ArrayList<>();
		try {
			st = om.getStatement(DB_USER, DB_PASS);
			ResultSet rs = st.executeQuery(SELECT_ALL);
			ResultSetMetaData rsMeta = rs.getMetaData();
			int columnCount = rsMeta.getColumnCount();
			
			while (rs.next()) {
				DeviceBean bean = new DeviceBean();
	            for (int i = 1; i <= columnCount; i++) {
	                bean.setUserName(rs.getString("UNAME"));
	                bean.setMonitor(rs.getString("MONITOR"));
	                bean.setMouse(rs.getString("MOUSE"));
	                bean.setMousePad(rs.getString("MOUSEPAD"));
	                bean.setMouseSole(rs.getString("MOUSESOLE"));
	            }
	            result.add(bean);
	        }
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
