package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.OracleManager;
import dto.UsertableDto;

public class UsertableDao extends Dao {
	private static final String INSERT_USER = "INSERT INTO usertable (name, password) VALUES (?, ?)";
	private static final String SELECT_USER_PASS = "SELECT uname, password FROM usertable WHERE uname = ?";
	private static final String DB_USER = "sensirecorder";
	private static final String DB_PASS = "sensi";
	
    OracleManager om = new OracleManager();
    
    Connection cn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    
    // 一行分を返すメソッド
    public UsertableDto findRecord(String user) {
        System.out.println("findRecord: " + user);
        UsertableDto dto = null;
        try {
            cn = om.getConnection(DB_USER, DB_PASS);
            pstmt = cn.prepareStatement(SELECT_USER_PASS);
            pstmt.setString(1, user);
            rs = pstmt.executeQuery();
            if (rs != null && rs.next()) {
                dto = new UsertableDto(rs.getString(1), rs.getString(2));
            } else {
                System.out.println("nullです");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return dto;
    }
    
    public boolean createUser(String name, String pass) {
        try (Connection connection = om.getConnection(DB_USER, DB_PASS);
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER)) {

            preparedStatement.setString(1, name);
            preparedStatement.setString(2, pass);

            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }  
}
