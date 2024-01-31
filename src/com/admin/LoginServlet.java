package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
///<list<admin userdetails = lis<customer> customer details
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	PrintWriter out = response.getWriter();//write any form of data the html to the response
	response.setContentType("text/html");//java script error ekak pennanna
	
	String username = request.getParameter("uid");
	String password = request.getParameter("pass");
	
	boolean isTrue;
	
	isTrue = AdminDBUtil.validate(username, password);
	
	if(isTrue == true) {
		
		 List<Admin> adminDetails = AdminDBUtil.getAdminDetails2(username);
	     request.setAttribute("adminDetails", adminDetails);
		
		//navigate to Home page page
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
	}
	else {
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Login Error</title>");
	    out.println("<style>");
	    out.println("   .error-message {");
	    out.println("       background-color: #ffdddd;");
	    out.println("       border: 1px solid #f44336;");
	    out.println("       color: #f44336;");
	    out.println("       padding: 10px;");
	    out.println("       text-align: center;");
	    out.println("       font-size: 18px;");
	    out.println("       font-weight: bold;");
	    out.println("       border-radius: 5px;");
	    out.println("       position: absolute;");
	    out.println("       top: 50%;");
	    out.println("       left: 50%;");
	    out.println("       transform: translate(-50%, -50%);");
	    out.println("   }");
	    out.println("</style>");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<div class='error-message'>");
	    out.println("   Your Username or Password is incorrect");
	    out.println("</div>");
	    out.println("<script>");
	    out.println("   setTimeout(function() {");
	    out.println("       location.href = 'login.jsp';");
	    out.println("   }, 3000);"); // Redirect to the login page after 3 seconds
	    out.println("</script>");
	    out.println("</body>");
	    out.println("</html>");
	}

	}
	}
