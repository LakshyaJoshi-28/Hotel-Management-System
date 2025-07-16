<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Room</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #fff;
            background-color: #c0392b;
            padding: 20px 0;
            margin: 0;
            font-size: 30px;
            letter-spacing: 1px;
            border-bottom: 5px solid #e74c3c;
        }

        form {
            background-color: #ffffff;
            padding: 35px 40px;
            margin: 50px auto;
            border-radius: 15px;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        label {
            font-weight: bold;
            color: #2c3e50;
            font-size: 15px;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            margin-bottom: 20px;
            border: 1.5px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
        }

        input[type="submit"] {
            background-color: #e74c3c;
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
            background-color: #c0392b;
        }

        .msg {
            text-align: center;
            font-weight: bold;
            font-size: 16px;
            margin-top: 10px;
        }

        .success { color: green; }
        .fail { color: red; }

        /* Back Button Styling */
        .back-button {
            display: block;
            width: fit-content;
            margin: 30px auto 60px auto;
            padding: 12px 24px;
            font-size: 16px;
            font-weight: 600;
            background: linear-gradient(to right, #e74c3c, #c0392b);
            color: #fff;
            border-radius: 10px;
            text-decoration: none;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            transition: all 0.3s ease;
        }

        .back-button:hover {
            background: linear-gradient(to right, #d63031, #a93226);
            transform: translateY(-2px);
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <h2>Delete Room</h2>

    <% 
        String msg = request.getParameter("msg");
        String error = request.getParameter("error");

        if ("success".equals(msg)) {
    %>
        <div class="msg success">Room deleted successfully!</div>
    <% } else if ("delete_failed".equals(error)) { %>
        <div class="msg fail">Failed to delete room. Make sure room number exists.</div>
    <% } %>

    <form action="DeleteRoomServlet" method="post">
        <label>Room Number:</label>
        <input type="text" name="room_number" required>

        <input type="submit" value="Delete Room">
    </form>

    <!-- Back Button -->
    <a href="adminactivities.jsp" class="back-button">← Back to Admin Activities</a>
</body>
</html>
