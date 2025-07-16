<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    HttpSession sessionObj = request.getSession(false);
    double amount = 0;
    if (sessionObj != null && sessionObj.getAttribute("amount") != null) {
        amount = (double) sessionObj.getAttribute("amount");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Success - The Elite-Stay</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #d4fc79, #96e6a1, #84fab0);
            background-size: 400% 400%;
            animation: backgroundShift 10s ease infinite;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        @keyframes backgroundShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .success-box {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 20px 35px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 450px;
            width: 90%;
            animation: fadeIn 1.2s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            color: #28a745;
            font-size: 30px;
            margin-bottom: 15px;
        }

        p {
            color: #444;
            font-size: 18px;
            margin: 10px 0;
        }

        a {
            display: inline-block;
            margin-top: 25px;
            padding: 12px 25px;
            background-color: #007bff;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="success-box">
    <h2>Payment Successful ✅</h2>
    <p>Your payment of ₹<strong><%= amount %></strong> has been received.</p>
    <a href="booking.jsp">Back to Home</a>
</div>

</body>
</html>
