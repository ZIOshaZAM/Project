package com.ai.jwd48.repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

	private static final String URL = "jdbc:mysql://localhost:3306/book_library";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "jell";
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static Connection connection;

	public static Connection getConnection() {

		try {
			Class.forName(DRIVER);

			if (connection == null) {
				connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} else {
				return connection;
			}

		} catch (ClassNotFoundException e) {
			System.out.println("Driver class not found");
		} catch (SQLException e) {
			System.out.println("Database connection not found");
		}
		return connection;

	}

}
