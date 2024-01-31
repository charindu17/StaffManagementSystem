<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<meta charset="UTF-8" />
    <title>Admin Dashboard</title>
    <style>
      body,
      h1,
      h2,
      ul,
      li {
        margin: 0;
        padding: 0;
      }

      body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
      }

      /* Sidebar styles */
      .sidebar {
        background-color: #333;
        color: #fff;
        width: 250px;
        height: 100%;
        position: fixed;
        top: 0;
        left: 0;
        overflow-y: auto;
      }

      .sidebar h2 {
        padding: 20px;
        text-align: center;
      }

      .sidebar ul {
        list-style-type: none;
      }

      .sidebar ul li {
        padding: 10px;
        text-align: center;
      }

      .sidebar ul li a {
        color: #fff;
        text-decoration: none;
        display: block;
      }

      .sidebar ul li a:hover {
        background-color: #555;
      }

      /* Content styles */
      .content {
        margin-left: 250px;
        padding: 20px;
      }

      header {
        background-color: #f0f0f0;
        padding: 10px;
        margin-bottom: 20px;
      }
      .button-container {
        text-align: center;
      }

      .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #3498db;
        color: #fff;
        text-align: center;
        text-decoration: none;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin: 10px;
        font-size: 16px;
      }

      .button:hover {
        background-color: #2980b9;
      }

      /* Add more CSS styles for your specific content and elements */

          <!-- Link to your CSS file -->
    </style>
<body>
<body>
    <div class="sidebar">
      <h2>Admin Dashboard</h2>
      <ul>
        <li><a href="admindash.jsp">Home</a></li>

        <li><a href="useraccount.jsp">Profile</a></li>
        
        
        <li><a href="addEmp.jsp">Add Employee</a></li>
        <!-- Add more menu items as needed -->
      </ul>
    </div>

    <div class="content">
      <header>
        <h1>Welcome </h1>
      </header>

      <!-- Content goes here -->
    </div>
   
    
 

</body>
</html>