package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbManager {
	private static Connection connection;
	private static String URL = DbProvider.URL;
	private static String USER = DbProvider.USER;
	private static String PASS = DbProvider.PASS;

	public static void main(String[] args) {
		System.out.println(getConnection());
	}

	public static Connection getConnection() {

		if (connection == null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection(URL, USER, PASS);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
		return connection;
	}
}
