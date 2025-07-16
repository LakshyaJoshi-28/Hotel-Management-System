<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" type="image/png" href="img/faviconHotel.png">
    
    <title>All Bookings - Hotel System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f8f9fa; /* Lighter background */
            padding: 20px;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Soft shadow for table */
            margin-bottom: 30px; /* Space below table */
        }
        th, td {
            padding: 12px 15px; /* More padding */
            text-align: center;
            border: 1px solid #e9ecef; /* Lighter border */
        }
        th {
            background-color: #007bff; /* Primary blue */
            color: white;
            font-weight: bold;
            text-transform: uppercase;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2; /* Zebra striping */
        }
        tr:hover {
            background-color: #e2e6ea; /* Highlight row on hover */
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #0056b3; /* Darker blue for heading */
            font-size: 2em;
        }
        .back-button-container {
            text-align: center;
            margin-top: 30px;
        }
        .back-button {
            background-color: #28a745; /* A vibrant green! Change to #007bff for blue, #ffc107 for yellow/orange, etc. */
            color: white;
            padding: 12px 25px; /* More padding */
            border: none;
            border-radius: 8px; /* Slightly more rounded corners */
            cursor: pointer;
            font-size: 1.1em; /* Slightly larger font */
            transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease; /* Smooth transition for hover effects */
            box-shadow: 0 4px 8px rgba(40, 167, 69, 0.3); /* Shadow matching button color */
        }
        .back-button:hover {
            background-color: #218838; /* Darker green on hover */
            transform: translateY(-3px); /* Slightly more lift effect on hover */
            box-shadow: 0 6px 12px rgba(40, 167, 69, 0.4); /* Enhanced shadow on hover */
        }
        .back-button:active {
            transform: translateY(0); /* Press effect */
            box-shadow: 0 2px 4px rgba(40, 167, 69, 0.2);
        }
    </style>
</head>
<body>
    <h2>All Booking Details</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Check-in Date</th>
            <th>Check-out Date</th>
            <th>Adults</th>
            <th>Children</th>
            <th>Room Type</th>
            <th>Price</th>
            <th>Total Amount</th>
        </tr>

        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "root");
                stmt = conn.createStatement();
                String query = "SELECT * FROM bookings";
                rs = stmt.executeQuery(query);

                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getDate("checkin_date") %></td>
            <td><%= rs.getDate("checkout_date") %></td>
            <td><%= rs.getInt("adults") %></td>
            <td><%= rs.getInt("children") %></td>
            <td><%= rs.getString("room_type") %></td>
            <td><%= rs.getDouble("price") %></td>
            <td><%= rs.getDouble("total_amount") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            } finally {
                try { if (rs != null) rs.close(); } catch (Exception e) {}
                try { if (stmt != null) stmt.close(); } catch (Exception e) {}
                try { if (conn != null) conn.close(); } catch (Exception e) {}
            }
        %>
    </table>

    <div class="back-button-container">
        <button class="back-button" onclick="window.location.href='AdminHome.jsp'">Back to Admin Home</button>
    </div>
</body>
</html>