package db;

import java.util.ArrayList;

abstract public class Dao {
	abstract public ArrayList<String> select(String sql);
	abstract public int executeUpdate(String sql);
	abstract public boolean isUserRegistered(String user);
	abstract public void close();
}
