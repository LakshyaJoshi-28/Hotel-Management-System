<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Room</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #ffffff;
            background-color: #2c3e50;
            padding: 20px 0;
            margin: 0;
            font-size: 30px;
            letter-spacing: 1px;
            border-bottom: 5px solid #3498db;
        }

        form {
            background-color: #ffffff;
            padding: 35px 40px;
            margin: 30px auto;
            border-radius: 15px;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
            width: 380px;
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
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        select:focus {
            border-color: #3498db;
            outline: none;
        }

        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            padding: 14px;
            width: 100%;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #219150;
        }

        .message {
            text-align: center;
            font-weight: bold;
            font-size: 16px;
            padding: 10px;
            width: 380px;
            margin: 20px auto 0 auto;
            border-radius: 8px;
        }

        .success {
            color: #155724;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
        }

        .error {
            color: #721c24;
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
        }

        .back-button {
            display: block;
            width: fit-content;
            margin: 30px auto 60px auto;
            padding: 12px 24px;
            font-size: 16px;
            font-weight: 600;
            background-color: #2980b9;
            color: #fff;
            border-radius: 10px;
            text-decoration: none;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            transition: all 0.3s ease;
        }

        .back-button:hover {
            background-color: #1f6391;
            transform: translateY(-2px);
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <h2>Add New Room</h2>

    <!-- Message Display -->
    <%
        String success = request.getParameter("success");
        String error = request.getParameter("error");
    %>
    <% if ("room_added".equals(success)) { %>
        <div class="message success">✅ Room added successfully!</div>
    <% } else if ("insert_failed".equals(error)) { %>
        <div class="message error">❌ Failed to add room. Please try again.</div>
    <% } else if ("missing_fields".equals(error)) { %>
        <div class="message error">❌ Please fill in all the required fields!</div>
    <% } else if ("invalid_price".equals(error)) { %>
        <div class="message error">❌ Invalid price entered. Please enter a valid number.</div>
    <% } %>

    <!-- Room Add Form -->
    <form action="AddRoomServlet" method="post">
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
            <option value="available">Available</option>
            <option value="occupied">Occupied</option>
        </select>

        <label>Description:</label>
        <input type="text" name="description" required>

        <input type="submit" value="Add Room">
    </form>

    <!-- Stylish Back Button -->
    <a href="adminactivities.jsp" class="back-button">← Back to Admin Activities</a>
</body>
</html>
