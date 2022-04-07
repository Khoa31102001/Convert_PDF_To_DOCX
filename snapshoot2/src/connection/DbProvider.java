package connection;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class DbProvider {
	public static String USER;
	public static String PASS;
	public static String URL;

	private DbProvider() {

	}

	static {
		try {
			JSONParser parser = new JSONParser();
			JSONObject a = (JSONObject) parser.parse(new FileReader("C:\\Users\\lecon\\Downloads\\snapshoot2\\CV\\dist\\db.json"));

			String host = (String) a.get("host");

			String db = (String) a.get("database");

			String port = (String) a.get("port");

			USER = (String) a.get("user");

			PASS = (String) a.get("passwd");

			URL = String.format("jdbc:mysql://%s:%s/%s", host, port, db);

		} catch (

		FileNotFoundException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		} catch (ParseException e) {

			e.printStackTrace();
		}

	}
}
