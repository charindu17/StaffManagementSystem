package com.admin;
//customer is Admin
public class Admin {
	private int id;
	private String username;
	private String password;
	private String name;
	private String dob;
	private String email;
	private String jobTitle;
	private String department;
	public Admin(int id, String username, String password, String name,String dob,String email,String jobTitle,String department) {
		
		this.id = id;
		this.username = username;
		this.password = password;
		this.name = name;
		this.dob = dob;
		this.email = email;
		this.jobTitle = jobTitle;
		this.department = department;
	}
	public int getId() {
		return id;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public String getName() {
		return name;
	}
	public String getDob() {
		return dob;
	}
	public String getEmail() {
		return email;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public String getDepartment() {
		return department;
	}
}
	

	


