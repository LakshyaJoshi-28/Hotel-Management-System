<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.hotel.pojo.RoomInfo" %>
<!DOCTYPE html>
<html>
<head>
    <title>Display All Rooms</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            background-color: #2c3e50;
            color: #ffffff;
            padding: 20px 0;
            font-size: 30px;
            letter-spacing: 1px;
            margin: 0;
            border-bottom: 5px solid #3498db;
        }

        table {
            width: 85%;
            margin: 40px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px 20px;
            text-align: center;
            font-size: 16px;
        }

        th {
            background-color: #34495e;
            color: #ffffff;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        tr:nth-child(even) {
            background-color: #f8f8f8;
        }

        tr:hover {
            background-color: #dff9fb;
            transition: background-color 0.3s ease;
        }

        td:last-child {
            font-weight: normal;
        }

        .occupied {
            color: red;
            font-weight: bold;
        }

        .available {
            color: green;
            font-weight: bold;
        }

        td:first-child {
            font-weight: 600;
        }

        .no-data {
            text-align: center;
            margin-top: 60px;
            font-size: 22px;
            color: #e74c3c;
            font-weight: bold;
        }

        /* New style for the back button */
        .back-button-container {
            text-align: center;
            margin-top: 20px;
        }

        .back-button {
            display: inline-block;
            padding: 12px 25px;
            font-size: 18px;
            color: #ffffff;
            background-color: #3498db;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .back-button:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <h2>All Rooms in the Hotel</h2>

    <%
        List<RoomInfo> allRooms = (List<RoomInfo>) request.getAttribute("allRooms");
        if (allRooms != null && !allRooms.isEmpty()) {
    %>
        <table>
            <tr>
                <th>Room Number</th>
                <th>Room Type</th>
                <th>Price (per night)</th>
                <th>Status</th>
                <th>Description</th>
            </tr>
            <% for(RoomInfo room : allRooms) { %>
                <tr>
                    <td><%= room.getRoomNumber() %></td>
                    <td><%= room.getRoomType() %></td>
                    <td>₹<%= room.getPrice() %></td>
                    <td class="<%= room.getStatus().equalsIgnoreCase("Occupied") ? "occupied" : "available" %>">
                        <%= room.getStatus() %>
                    </td>
                    <td><%= room.getDescription() %></td>
                </tr>
            <% } %>
        </table>
    <% } else { %>
        <div class="no-data">No rooms found in the database.</div>
    <% } %>

    <div class="back-button-container">
        <a href="adminactivities.jsp" class="back-button">Back to Admin Activities</a>
    </div>
</body>
</html>