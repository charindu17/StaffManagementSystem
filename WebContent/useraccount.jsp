<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-OSmPvj5/PDq7qR1G5p5Oy5F5QlR0E63fbbh7AIu7in5C5KtOZ9nvlC2xQfa3z9lP" crossorigin="anonymous">

   
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-OSmPvj5/PDq7qR1G5p5Oy5F5QlR0E63fbbh7AIu7in5C5KtOZ9nvlC2xQfa3z9lP" crossorigin="anonymous">

    <link rel="apple-touch-icon" href="images/apple-icon01.png">
    <link rel="shortcut icon" type="image/x-icon" href="images/apple-icon01.ico">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo.css">
    <link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Bootstrap CSS (if not already included) -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="css/fontawesome.min.css">
</head>
<body>
<div class="container">
<div class="row">
        <div class="col-md-8">
            <div class="user mt-5">
<table>
	
<c:forEach var = "cus" items = "${adminDetails}" >
	<c:set var="id" value="${cus.id}"/>
		<c:set var="username" value="${cus.username}"/>
		<c:set var="password" value="${cus.password}"/>
		<c:set var="name" value="${cus.name}"/>
		<c:set var="dob" value="${cus.dob}"/>
		<c:set var="email" value="${cus.email}"/>
		<c:set var="jobTitle" value="${cus.jobTitle}"/>
		<c:set var="department" value="${cus.department}"/>
		

	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.username}</td>
	</tr>
	<tr>
		<td>Customer Password</td>
		<td>${cus.password}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Customer Date of Birth</td>
		<td>${cus.dob}</td>
	</tr>
	<tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	
	<tr>
		<td>Customer Job Title</td>
		<td>${cus.jobTitle}</td>
	</tr>
	<tr>
		<td>Customer Department</td>
		<td>${cus.department}</td>
	</tr>
	
	</c:forEach>

	</table>



	<c:url value="updateEmp.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="dob" value="${dob}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="jobTitle" value="${jobTitle}"/>
		<c:param name="department" value="${department}"/>
	</c:url>
	
	
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update Data">
	</a>

	
		<c:url value="deleteEmp.jsp" var="cusdelete">
		
			
			<c:param name="id" value="${id}"/>
			<c:param name="username" value="${username}"/>
			<c:param name="password" value="${password}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="dob" value="${dob}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="jobTitle" value="${jobTitle}"/>
			<c:param name="department" value="${department}"/>
	</c:url>	
	
	<a href ="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	</div>
	</div>
	</div>
	</div>
</body>
</html>