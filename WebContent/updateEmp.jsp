<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Employee</title>

  <!-- style -->
  <style>
      /*css styles for login */
      body {
        font-family: Product Sans, bold;
        background-color: PALEGOLDENROD;
      }
      .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }
      h1 {
        text-align: center;
      }
      label {
        display: block;
        margin-bottom: 10px;
      }
      input[type="text"],
      input[type="password"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }
      input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        background-color: DARKKHAKI;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      input[type="submit"]:hover {
        background-color: DARKOLIVEGREEN;
      }
    </style>
</head>
<body>
 <%
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String jobTitle = request.getParameter("jobTitle");
		String department = request.getParameter("department");
	%>
<div class="container">
      <h1>Update Employee</h1>
     
	
      <form action="update" method="post">
      
        <label for="username">Employee id </label>
        <input type="text" id="cusid" name="id" value="<%=id%>"readonly required />

        <label for="username">Username </label>
        <input type="text" id="username" name="username" value="<%=username %>" required />

        <label for="password">Password</label>
        <input type="password" id="password" name="password" value="<%=password %>" required />

        <label for="name">Name </label>
        <input type="text" id="name" name="name" value="<%=name %>" required />

        <label for="dateofbirth">Date of Birth </label>
        <input type="text" id="dateofbirth" name="dob" value="<%=dob %>" required />
        
        <label for="email">Email </label>
        <input type="text" id="email" name="email" value="<%=email %>" required />

        <label for="username">Job Title </label>
        <input type="text" id="jobtitle" name="jobTitle" value="<%=jobTitle%>" required />

        <label for="department">Department </label>
        <input type="text" id="department" name="department" value="<%=department %>"  required />


        <input type="submit" value="Update Employee"  name = "submit"/>

        
      </form>
    </div>

    
    
</body>
</html>