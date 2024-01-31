package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String jobTitle = request.getParameter("jobTitle");
		String department = request.getParameter("department");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.updatecustomer(id, username, password, name, dob, email, jobTitle, department);
		
		  if (isTrue) {
	            List<Admin> admindetails = AdminDBUtil.getUserDetails(id);
	            request.setAttribute("adminDetails", admindetails);
	            RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	            dis.forward(request, response);
	        } else {
	            out.println("<script>alert('Update failed!');</script>");
	        }
	}

}


