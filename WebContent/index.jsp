<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/Index.css'/>">
    <style>
        @charset "ISO-8859-1";

        h1, h4 {
            font-family: Helvetica, Arial, sans-serif;
            margin-bottom: 0px;
        }

        h4.sub-heading1 {
            margin-left: 5px;
            font-weight: lighter;
            margin-top: 0px;
            margin-bottom: 5px;
        }

        /* Quick access links */
        .container {
            display: flex;
            align-items: center;
            justify-content: flex-end;
            margin: 60px 40px;
        }

        .QAimg {
            width: 54%;
            margin-right: 30px;
        }

        .content {
            font-family: Helvetica, Arial, sans-serif;
            text-align: left;
        }

        .topic {
            text-align: left;
            margin: 0;
            padding: 20px 0;
            font-size: 1.5rem;
        }

        .Link-set {
            list-style-type: none;
            padding: 0;
        }

        .Link-set li a {
            display: block;
            text-decoration: none;
            padding: 30px 16px;
            border: 1px solid rgb(59, 59, 59);
            border-radius: 10px;
            color: rgb(59, 59, 59);
            font-size: 23px;
            margin: 10px;
        }

        .Link-set li a i.fa {
            float: right;
            padding-top: 5px;
        }

        .Link-set li :hover {
            border: 2px solid black;
            transform: scale(1.05);
        }

        .title {
            display: flex;
            margin: 60px 0 30px 150px;
            text-align: center;
        }

        .title .text {
            font-size: 45px;
            font-weight: 500;
            color: #002960;
            margin-left: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header style="background-color: #333; color: #fff; padding: 10px; display: flex; justify-content: space-between; align-items: center;">
        <div class="logo" style="font-size: 1.5rem;">Your Staff Management System</div>
        <nav>
            <ul style="list-style: none; padding: 0;">
                <li style="display: inline; margin-right: 20px;"><a href="/">Home</a></li>
                <li style="display: inline; margin-right: 20px;"><a href="/staff">Staff</a></li>
                <li style="display: inline; margin-right: 20px;"><a href="/departments">Departments</a></li>
                <!-- Add more navigation links as needed -->
            </ul>
        </nav>
    </header>

    <hr style="color:black; margin: 0px 100px; border:1px solid black">

    <div class="title">
        <span class="text">Welcome to ABC Company Online Staff Management System !</span>
    </div>

    <!-- Quick access links -->
    <div class="container">
        <img src="./img/pic.jpg" alt="Staff" class="QAimg">
        <div class="content">
            <h1 class="topic">Get Access to the Online Staff Management System</h1>
            <ul class="Link-set">
                <li><a href="login.jsp">Log In<i class="fa fa-chevron-right"></i></a></li>
                <li><a href="HelpSupport.jsp">Help and support<i class="fa fa-chevron-right"></i></a></li>
            </ul>
        </div>
    </div>

    <hr style="color:black; margin: 0px 100px; border:1px solid black">

    <!-- Footer -->
    <footer style="background-color: #333; color: #fff; text-align: center; padding: 10px;">
        &copy; 2023 Your Company | <a href="contact.html" style="color: #fff; text-decoration: none;">Contact Us</a>
    </footer>
</body>
</html>
