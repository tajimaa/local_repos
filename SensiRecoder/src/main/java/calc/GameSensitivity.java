package calc;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

public class GameSensitivity {
	private static HashMap<String, Double> games = new HashMap<>();

	static {
		init();
	}

	private GameSensitivity() {
	}

	public static double cm360(int dpi, String game, double gameSensitivity) {
		return round(getIn360(dpi, game, gameSensitivity) * 2.54, 2);
	}

	public static double cm180(int dpi, String game, double gameSensitivity) {
		return round(getIn360(dpi, game, gameSensitivity) * 1.27, 2);
	}

	private static double getIn360(int dpi, String game, double gameSensitivity) {
		double inputDegreesPerDot = games.get(game);
		double in360 = 360 / (dpi * inputDegreesPerDot * gameSensitivity);

		return in360;
	}

	private static double round(double num, int decimals) {
		if (num == 0) {
			return 0;
		}
		double rounding = Math.pow(10, decimals);
		return Math.round(num * rounding) / rounding;
	}

	public static void init() {
		try {
			Properties pro = new Properties();
			pro.load(new FileInputStream("C:\\local_repos\\SensiRecoder\\src\\properties\\game.properties"));

			Iterator<Object> ite = pro.keySet().iterator();
			while (ite.hasNext()) {
				String key = (String) ite.next();
				games.put(key, Double.parseDouble(pro.getProperty(key)));
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}