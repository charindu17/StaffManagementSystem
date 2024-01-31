package com.admin;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/AddEmp")
public class AddEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catching inputs passed in the form
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
        String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		String name = request.getParameter("nuid");
		String dob = request.getParameter("dob");
		String email = request.getParameter("euid");
		String jobTitle = request.getParameter("juid");
		String department= request.getParameter("duid");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.addEmployee(username, password, name, dob, email, jobTitle, department);
		
		if(isTrue==true) {
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('Admin account registered successfully!');");
		    out.println("window.location.href = 'admindash.jsp';"); // Redirect to your registration page
		    out.println("</script>");
		} else {
//			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
//			dis2.forward(request, response);
		}
			
	}

}
