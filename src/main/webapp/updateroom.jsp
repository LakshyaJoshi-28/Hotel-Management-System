<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Room</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #FFDEE9, #B5FFFC);
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            color: #fff;
            background-color: #34495e;
            padding: 20px 0;
            margin: 0;
            font-size: 30px;
            letter-spacing: 1px;
            border-bottom: 5px solid #1abc9c;
        }
        form {
            background-color: #ffffff;
            padding: 35px 40px;
            margin: 50px auto;
            border-radius: 15px;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
            width: 400px;
            transition: all 0.3s ease-in-out;
        }
        form:hover {
            transform: scale(1.02);
        }
        label {
            font-weight: bold;
            color: #2c3e50;
            font-size: 15px;
        }
        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            margin-bottom: 20px;
            border: 1.5px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 15px;
        }
        input[type="submit"] {
            background-color: #2980b9;
            color: white;
            padding: 14px;
            width: 100%;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }
        input[type="submit"]:hover {
            background-color: #1f6392;
        }
        .msg {
            text-align: center;
            font-weight: bold;
            font-size: 16px;
            margin-top: 10px;
        }
        .success { color: green; }
        .fail { color: red; }

        /* Stylish Purple Back Button */
        .back-button {
            display: block;
            width: fit-content;
            margin: 30px auto 60px auto;
            padding: 12px 24px;
            font-size: 16px;
            font-weight: 600;
            background: linear-gradient(to right, #8e44ad, #9b59b6);
            color: #fff;
            border-radius: 10px;
            text-decoration: none;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            transition: all 0.3s ease;
        }

        .back-button:hover {
            background: linear-gradient(to right, #7d3c98, #884ea0);
            transform: translateY(-2px);
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <h2>Update Room Details</h2>

    <%
        String msg = request.getParameter("msg");
        if ("success".equals(msg)) {
    %>
        <div class="msg success">Room updated successfully!</div>
    <%
        } else if ("fail".equals(msg)) {
    %>
        <div class="msg fail">Failed to update room. Please try again.</div>
    <%
        }
    %>

    <form action="UpdateRoomServlet" method="post">
        <label>Room Number:</label>
        <input type="text" name="room_number" required>

        <label>Room Type:</label>
        <select name="room_type" required>
            <option value="">--Select Room Type--</option>
            <option value="Standard Single">Standard Single</option>
            <option value="Standard Double">Standard Double</option>
            <option value="Premium Single">Premium Single</option>
            <option value="Premium Double">Premium Double</option>
            <option value="Double Silver">Double Silver</option>
        </select>

        <label>Price:</label>
        <input type="number" name="price" step="0.01" required>

        <label>Status:</label>
        <select name="status" required>
            <option value="">--Select Status--</option>
            <option value="Available">Available</option>
            <option value="Occupied">Occupied</option>
        </select>

        <label>Description:</label>
        <input type="text" name="description" required>

        <input type="submit" value="Update Room">
    </form>

    <!-- Back Button -->
    <a href="adminactivities.jsp" class="back-button">← Back to Admin Activities</a>
</body>
</html>
