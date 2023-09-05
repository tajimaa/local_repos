package db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UsertableDao extends Dao {
	String dbUser = "sensi";
	String dbPass = "sensi";
	Statement st = null;
	ResultSet rs = null;
	OracleManager om = new OracleManager();
	
	public UsertableDto findRecord(String user) {
		String sql = "select user, password from usertable where name = '"+ user +"'";
		UsertableDto dto = null;
		try {
			st = om.getStatement(dbUser, dbPass);
			ResultSet rs = st.executeQuery(sql);
			rs.next();
			dto = new UsertableDto(rs.getString(0), rs.getString(1));
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
		return dto;
	}
}
