package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import beans.AllBean;
import beans.SensiBean;
import db.OracleManager;

public class SensiDao extends Dao {
	String dbUser = "sensirecorder";
	String dbPass = "sensi";
	Statement st = null;
	ResultSet rs = null;
	Connection cn = null;
	PreparedStatement ps = null;
	OracleManager om = new OracleManager();
	
	public ArrayList<String> select(String sql) {
		ArrayList<String> result = new ArrayList<>();

		try {
			st = om.getStatement(dbUser, dbPass);
			ResultSet rs = st.executeQuery(sql);
			ResultSetMetaData rsMeta = rs.getMetaData();
			int columnCount = rsMeta.getColumnCount();
			System.out.println("columnCount: "+ columnCount);
			System.out.println("SQL: "+ sql);
			
			while (rs.next()) {
	            for (int i = 1; i <= columnCount; i++) {
	                result.add(rs.getString(i));
	                System.out.println("column: " + rs.getString(i));
	            }
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
	
	public ArrayList<AllBean> selectAll(String sql) {
		ArrayList<AllBean> result = new ArrayList<>();

		try {
			st = om.getStatement(dbUser, dbPass);
			ResultSet rs = st.executeQuery(sql);
			ResultSetMetaData rsMeta = rs.getMetaData();
			int columnCount = rsMeta.getColumnCount();
			System.out.println("columnCount: "+ columnCount);
			System.out.println("SQL: "+ sql);
			
			while (rs.next()) {
				AllBean bean = new AllBean();
            	bean.setUserName(rs.getString("UNAME"));
                bean.setGame(rs.getString("GAME"));
                bean.setSensitivity(rs.getString("SENSITIVITY"));
                bean.setDpi(rs.getString("DPI"));
                bean.setCm180(rs.getString("CM180"));
                bean.setCm360(rs.getString("CM360"));
                bean.setRegistered(rs.getString("REGISTERED"));
                bean.setMouse(rs.getString("MOUSE"));
                bean.setMousePad(rs.getString("MOUSEPAD"));
                bean.setMouseSole(rs.getString("MOUSESOLE"));
                bean.setMonitor(rs.getString("MONITOR"));
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
	
	public ArrayList<SensiBean> selectUser(String sumone) {
		ArrayList<SensiBean> result = new ArrayList<>();
		String sql = "select UNAME from sensitable where GAME = ?";
		Connection cn = null;
		PreparedStatement ps = null;
        
		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql);
			ps.setString(1, sumone);
			rs = ps.executeQuery();
			
			if(rs != null) {
				while(rs.next()) {
					SensiBean bean = new SensiBean();
	                bean.setuName(rs.getString("UNAME"));
					result.add(bean);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		return result;
	}

	public int executeUpdate(String sql) {
		int flag = -1;

		try {
			st = om.getStatement(dbUser, dbPass);
			flag = st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			return flag;
		}
		return flag;
	}
	
	public Connection getConnection() {
		try {
			cn = om.getConnection(dbUser, dbPass);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cn;
	}
	
	public boolean isUserRegistered(String user) {
		ArrayList<String> list = new ArrayList<>();
		
		String sql ="SELECT user FROM usertable WHERE user ='"+ user +"'";
		list = select(sql);
		
		if(0 != list.size()) {
			return true;
		} else {
			return false;
		}
	}

	public void close() {
		om.closeConnection();
	}
}


