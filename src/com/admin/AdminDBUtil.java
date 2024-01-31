package com.admin;
//Array list<admin> = <customer>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username,String password){
		String url = "jdbc:mysql://localhost:3306/admin_details";
    	String user = "root";
    	String pass = "CHarindu.17";
		
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		
	
		String sql = "select * from user_details where username='"+username+"' and password='"+password+"'";//sql query to select the suitable user and get details
		rs = stmt.executeQuery(sql);//run the sql query(Using exceptions in sql)
		
		if(rs.next()) {//check the username and password correct or wrong
			isSuccess = true;	
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e){ //catch the error
		e.printStackTrace();//print the error
		
	}
	
	return isSuccess;
	
}
	public static List<Admin> getAdminDetails2(String username){
		ArrayList<Admin> cus = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/admin_details";
    	String user = "root";
    	String pass = "CHarindu.17";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from user_details where username='"+username+"'";//sql query to select the suitable user and get details
			rs = stmt.executeQuery(sql);//run the sql query
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String usern= rs.getString(2);
				String passn= rs.getString(3);
				String name= rs.getString(4);
				String dob= rs.getString(5);
				String email = rs.getString(6);
				String jobTitle= rs.getString(7);
				String department= rs.getString(8);
				 
				 
				 
				Admin c = new Admin(id,usern,passn,name,dob,email,jobTitle,department);
				
				cus.add(c);
			}
			
			
		}
		catch(Exception e){
			
		}
		
		return cus;
	
}
	//insert
        public static boolean addEmployee(String username, String password, String name, String dob,String email,String jobTitle,String department) {
    	
    	boolean isSuccess = false;
    	
    	String url = "jdbc:mysql://localhost:3306/admin_details";
    	String user = "root";
    	String pass = "CHarindu.17";

    	try {
    		
//			con = DBConnect.getConnection();
//			stmt = con.createStatement();
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection(url, user, pass);
    		Statement stmt = con.createStatement();
    		
    	    String sql = "insert into user_details values  (0,'"+username+"', '"+password+"', '"+name+"', '"+dob+"','"+email+"', '"+jobTitle+"',  '"+department+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
        //update
        public static boolean updatecustomer(String id,String username, String password, String name, String dob,String email,String jobTitle,String department) {
        	

        	String url = "jdbc:mysql://localhost:3306/admin_details";
        	String user = "root";
        	String pass = "CHarindu.17";
        	
        	try {
        		
        		Class.forName("com.mysql.jdbc.Driver");
        		Connection con = DriverManager.getConnection(url, user, pass);
        		Statement stmt = con.createStatement();
        		
        		String sql = "update user_details set username='"+username+"', password='"+password+"', name='"+name+"', DOB='"+dob+"', email='"+email+"', jobtitle='"+jobTitle+"', department='"+department+"' where id='"+id+"'";

        		int rs = stmt.executeUpdate(sql);
        		
        		if(rs > 0) {
        			isSuccess = true;
        		}
        		else {
        			isSuccess = false;
        		}
        		
        	}
        	catch(Exception e) {
        		e.printStackTrace();
        	}
        	
        	return isSuccess;
        }
        
        public static List<Admin> getUserDetails(String id) {
        	String url = "jdbc:mysql://localhost:3306/admin_details";
        	String user = "root";
        	String pass = "CHarindu.17";
        	int convertedID = Integer.parseInt(id);
        	
        	ArrayList<Admin> cus = new ArrayList<>();
        	
        	try {
        		
        		Class.forName("com.mysql.jdbc.Driver");
        		Connection con = DriverManager.getConnection(url, user, pass);
        		Statement stmt = con.createStatement();
        		String sql = "select * from user_details where id='"+convertedID+"'";
        		rs = stmt.executeQuery(sql);
        		
        		while(rs.next()) {
        			int cid = rs.getInt(1);
        			String username = rs.getString(2);
        			String password = rs.getString(3);
        			String name = rs.getString(4);
        			String dob = rs.getString(5);
        			String email = rs.getString(6);
        			String jobTitle = rs.getString(7);
        			String department = rs.getString(8);

        			
        			Admin c = new Admin(cid,username,password,name,dob,email,jobTitle, department);
        			cus.add(c);
        		}
        		
        	}
        	catch(Exception e) {
        		e.printStackTrace();
        	}	
        	return cus;	
        }
        
        
        public static boolean deleteUserDetails(String id) {
        	String url = "jdbc:mysql://localhost:3306/admin_details";
        	String user = "root";
        	String pass = "CHarindu.17";
        	int convId = Integer.parseInt(id);
        	
        	try {
        		
        		Class.forName("com.mysql.jdbc.Driver");
        		Connection con = DriverManager.getConnection(url, user, pass);
        		Statement stmt = con.createStatement();
        		String sql = "delete from admin_details.user_details where id='"+convId+"'";
        		int r = stmt.executeUpdate(sql);
        		
        		if (r > 0) {
        			isSuccess = true;
        		}
        		else {
        			isSuccess = false;
        		}
        		
        	}
        	catch (Exception e) {
        		e.printStackTrace();
        	}
        	
        	return isSuccess;
        }
        
     
}
