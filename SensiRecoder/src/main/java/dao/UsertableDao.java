package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.OracleManager;
import dto.UsertableDto;

public class UsertableDao extends Dao {
    OracleManager om = new OracleManager();
    
    Connection cn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    String dbUser = "sensi";
    String dbPass = "sensi";
    
    // 一行分を返すメソッド
    public UsertableDto findRecord(String user) {
        System.out.println("findRecord: " + user);
        UsertableDto dto = null;
        try {
            cn = om.getConnection(dbUser, dbPass);
            pstmt = cn.prepareStatement("SELECT name, password FROM usertable WHERE name = ?");
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
                // pstmt と cn もクローズする必要があります
                if (pstmt != null) {
                    pstmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return dto;
    }
}
