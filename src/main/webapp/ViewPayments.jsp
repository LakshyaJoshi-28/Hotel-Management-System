<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" type="image/png" href="img/faviconHotel.png">
    
    <title>Payment Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f8f9fa; /* Lighter background */
            padding: 20px;
            color: #333;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #0056b3; /* Darker blue for heading */
            font-size: 2em;
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

        /* --- Back Button Styles --- */
        .back-button-container {
            text-align: center;
            margin-top: 30px; /* Space above the button */
        }
        .back-button {
            background-color: #28a745; /* Vibrant green */
            color: white;
            padding: 12px 25px; /* Comfortable padding */
            border: none;
            border-radius: 8px; /* Rounded corners */
            cursor: pointer;
            font-size: 1.1em; /* Slightly larger font */
            transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease; /* Smooth animations */
            box-shadow: 0 4px 8px rgba(40, 167, 69, 0.3); /* Shadow matching button color */
            text-decoration: none; /* Remove underline if it were an anchor */
            display: inline-block; /* Allows padding and margins if it were an anchor */
        }
        .back-button:hover {
            background-color: #218838; /* Darker green on hover */
            transform: translateY(-3px); /* Lift effect */
            box-shadow: 0 6px 12px rgba(40, 167, 69, 0.4); /* Enhanced shadow on hover */
        }
        .back-button:active {
            transform: translateY(0); /* Press effect */
            box-shadow: 0 2px 4px rgba(40, 167, 69, 0.2);
        }
    </style>
</head>
<body>
    <h2>All Payment Records</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Card Number</th>
            <th>Room Type</th>
            <th>Room Price</th>
            <th>Amount</th>
            <th>Payment Time</th>
        </tr>

        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "root");
                stmt = conn.createStatement();
                String query = "SELECT * FROM payments";
                rs = stmt.executeQuery(query);

                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("full_name") %></td>
            <td><%= rs.getString("card_number") %></td>
            <td><%= rs.getString("room_type") %></td>
            <td><%= rs.getDouble("room_price") %></td>
            <td><%= rs.getDouble("amount") %></td>
            <td><%= rs.getTimestamp("payment_time") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='8'>Error: " + e.getMessage() + "</td></tr>");
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