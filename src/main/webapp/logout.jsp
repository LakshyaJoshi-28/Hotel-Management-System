<%@ page import="com.hotel.pojo.UserInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <!-- Favicon -->
    <link rel="icon" type="image/png" href="img/faviconHotel.png">
    
    <meta charset="UTF-8">
    <title>Logout | Elite Stay</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        .login_section {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: #ffffffcc;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .btn-primary {
            padding: 10px 25px;
            font-size: 16px;
            border-radius: 8px;
            background-color: #007BFF;
            border: none;
            color: white;
            text-decoration: none;
            transition: background 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="login_section">
    <div class="card">
        <%
            UserInfo currentUser = (UserInfo) session.getAttribute("user");
            String name = (currentUser != null && currentUser.getName() != null) ? currentUser.getName() : "Guest";
            session.invalidate();
        %>
        <h3>Goodbye <%= name %>, Thanks for visiting Elite Stay!</h3>
        <br>
        <a href="login.jsp" class="btn btn-primary">Click Here to Login Again</a>
    </div>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
