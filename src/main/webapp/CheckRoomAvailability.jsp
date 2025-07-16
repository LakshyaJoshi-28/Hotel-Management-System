<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Check Room Availability</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #83a4d4, #b6fbff);
            padding: 40px;
        }

        .form-container {
            background-color: white;
            border-radius: 20px;
            padding: 30px;
            max-width: 400px;
            margin: auto;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .form-container h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007BFF;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .back-button {
            display: inline-block;
            margin-top: 15px;
            background-color: #6c757d;
            color: white;
            padding: 10px 15px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 14px;
        }

        .back-button:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Check Room Availability</h2>
    <form method="post" action="CheckAvailabilityServlet">
        <label for="roomtype">Room Type:</label>
        <select name="roomtype" required>
            <option value="">Select Room Type</option>
            <option value="Standard Single">Standard Single</option>
            <option value="Standard Double">Standard Double</option>
            <option value="Premium Single">Premium Single</option>
            <option value="Silver Double">Silver Double</option>
            <option value="Premium Double">Premium Double</option>
        </select>

        <button type="submit">Check Availability</button>
    </form>
    <a href="booking.jsp" class="back-button">Back</a>
</div>

</body>
</html>
