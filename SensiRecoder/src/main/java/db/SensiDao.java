package db;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SensiDao extends Dao {
	String dbUser = "sensi";
	String dbPass = "sensi";
	Statement st = null;
	ResultSet rs = null;
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

	public int executeUpdate(String sql) {
		int flag = -1;

		try {
			st = om.getStatement(dbUser, dbPass);
			flag = st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public boolean isUserRegistered(String user) {
		ArrayList<String> list = new ArrayList<>();
		
		String sql ="SELECT username FROM userconf WHERE username ='"+ user +"'";
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


