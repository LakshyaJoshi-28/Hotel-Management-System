<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hotel.pojo.RoomInfo" %>

<!DOCTYPE html>
<html>
<head>
    <title>List of Available Rooms</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #fdfbfb, #ebedee);
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            background-color: #1abc9c;
            padding: 20px 0;
            margin: 0;
            font-size: 32px;
            letter-spacing: 1px;
            border-bottom: 5px solid #16a085;
        }

        table {
            width: 90%;
            margin: 40px auto 20px auto;
            border-collapse: collapse;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
            border-radius: 12px;
            overflow: hidden;
        }

        th, td {
            padding: 15px 20px;
            text-align: center;
            font-size: 16px;
        }

        th {
            background-color: #34495e;
            color: white;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #d1f2eb;
            transition: background-color 0.3s;
        }

        td:last-child {
            font-weight: normal;
            color: #2c3e50;
        }

        td:first-child {
            font-weight: 600;
        }

        .note, .back-btn-container {
            text-align: center;
            margin-top: 25px;
        }

        .note {
            color: #e74c3c;
            font-size: 16px;
            font-weight: 500;
        }

        .back-btn {
            display: inline-block;
            padding: 12px 25px;
            background: #1abc9c;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: background 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .back-btn:hover {
            background: #16a085;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <h2>List of Available Rooms</h2>

    <table>
        <tr>
            <th>Room Number</th>
            <th>Room Type</th>
            <th>Price (per night)</th>
            <th>Status</th>
            <th>Description</th>
        </tr>

        <%
            List<RoomInfo> roomList = (List<RoomInfo>) request.getAttribute("roomList");
            if (roomList != null && !roomList.isEmpty()) {
                for (RoomInfo room : roomList) {
        %>
            <tr>
                <td><%= room.getRoomNumber() %></td>
                <td><%= room.getRoomType() %></td>
                <td>&#8377; <%= room.getPrice() %></td>
                <td><%= room.getStatus() %></td>
                <td><%= room.getDescription() %></td>
            </tr>
        <%
                }
            } else if (roomList != null) {
        %>
            <tr><td colspan="5" style="color: red;">No available rooms found.</td></tr>
        <%
            } else {
        %>
            <tr><td colspan="5" style="color: red;">Please access this page via <strong>ListAvailableRoomsServlet</strong>.</td></tr>
        <%
            }
        %>
    </table>

    <div class="back-btn-container">
        <a class="back-btn" href="adminactivities.jsp">← Back to Admin Activities</a>
    </div>
</body>
</html>
