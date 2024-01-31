package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	//create db connection
	private static String url = "jdbc:mysql://localhost:3360/admin_details";
	private static String user = "root";
	private static String pass = "CHarindu.17";
	private static Connection con;
	
	public static  Connection getConnection() {
    try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}

}
