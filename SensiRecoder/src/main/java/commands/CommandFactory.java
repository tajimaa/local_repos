package commands;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import context.RequestContext;

public class CommandFactory {
	@SuppressWarnings("deprecation")
	public static AbstractCommand getCommand(RequestContext rc) {
		AbstractCommand command = null;
		Properties prop = new Properties();
		
		try {
			prop.load(new FileInputStream("C:\\local_repos\\SensiRecoder\\src\\properties\\commands.properties"));
			String name = prop.getProperty(rc.getCommandPath());
			Class<?> c = Class.forName(name);
			command = (AbstractCommand) c.newInstance();
			
		} catch (ClassNotFoundException |IOException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		
		return command;
	}
}
