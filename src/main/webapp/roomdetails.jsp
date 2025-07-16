<%@page import="com.hotel.pojo.RoomInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hotel.pojo.RoomInfo" %>
<!DOCTYPE html>
<html>
<head>
    <title>Room Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            margin: 0;
            padding: 0;
        }
        .container {
            width: 450px;
            margin: 60px auto;
            padding: 30px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #e67e22;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            color: #2c3e50;
            line-height: 1.5;
        }
        .btn {
            display: block;
            margin: 25px auto 0;
            text-align: center;
            background-color: #e67e22;
            color: white;
            padding: 12px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
        }
        .btn:hover {
            background-color: #d35400;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Room Details</h2>
        <%
            RoomInfo room = (RoomInfo) request.getAttribute("room");
            if (room != null) {
        %>
            <p><strong>Room Number:</strong> <%= room.getRoomNumber() %></p>
            <p><strong>Room Type:</strong> <%= room.getRoomType() %></p>
            <p><strong>Status:</strong> <%= room.getStatus() %></p>
            <p><strong>Description:</strong> <%= room.getDescription() %></p>
        <% 
            } else { 
        %>
            <p style="color:red;">Room not found.</p>
        <% 
            } 
        %>
        <a class="btn" href="searchroom.jsp">Search Again</a>
        <a class="btn" href="adminactivities.jsp">Back to Admin Activities</a>
    </div>
</body>
</html>
