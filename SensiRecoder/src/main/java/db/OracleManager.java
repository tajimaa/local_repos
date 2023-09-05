package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class OracleManager {
	Connection cn = null;
	private Connection getConnection(String user, String pass) {
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");

            cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "sensi", "sensi");

        } catch(ClassNotFoundException e) {
            e.printStackTrace();
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return cn;
    }
    
    public Statement getStatement(String user, String pass) {
    	Connection cn = getConnection(user, pass);
    	Statement st = null;
    	
    	try {
    		st = cn.createStatement();
    	} catch(SQLException e) {
            e.printStackTrace();
        }
    	
    	return st;
    }
    
    public void closeConnection() {
    	try {
    		if(cn != null) {
    			cn.close();
    		}
    	} catch (SQLException e) {
    		e.printStackTrace();
    	}
    }
    
}
