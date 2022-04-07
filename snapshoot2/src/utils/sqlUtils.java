package utils;

public class sqlUtils {
	private sqlUtils() {

	}

	public static void close(AutoCloseable... closeables) {
		try {
			for (AutoCloseable closeable : closeables) {
				if (closeable != null)
					closeable.close();

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
