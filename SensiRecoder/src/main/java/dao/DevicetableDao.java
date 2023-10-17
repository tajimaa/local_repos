package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import beans.DeviceBean;
import db.OracleManager;

public class DevicetableDao {
	private static final String SELECT_ALL = "select * from devicetable";
	private static final String SELECT_BY_USERNAME = "select * from devicetable where uname = ?";
	private static final String DB_USER = "sensirecoder";
	private static final String DB_PASS = "sensi";
	
    OracleManager om = new OracleManager();
    
    Connection cn = null;
    Statement st = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public DeviceBean selectByUsername(String name) {
    	DeviceBean bean = new DeviceBean();
    	try {
    		cn = om.getConnection(DB_USER, DB_PASS);
    		ps = cn.prepareStatement(SELECT_BY_USERNAME);
    		ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
                bean.setUserName(rs.getString("UNAME"));
                bean.setMonitor(rs.getString("MONITOR"));
                bean.setMouse(rs.getString("MOUSE"));
                bean.setMousePad(rs.getString("MOUSEPAD"));
                bean.setMouseSole(rs.getString("MOUSESOLE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	return bean;
    }
    
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
	
	public void close() {
		om.closeConnection();
	}
}
