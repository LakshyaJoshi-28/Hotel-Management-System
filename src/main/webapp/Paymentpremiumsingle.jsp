<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    HttpSession sessionObj = request.getSession(false);
    String roomType = (String) sessionObj.getAttribute("roomType");
    double roomPrice = (double) sessionObj.getAttribute("roomPrice");
    double amount = (double) sessionObj.getAttribute("amount");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment - The Elite-Stay</title>
    <style>
        * { box-sizing: border-box; }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e3f2fd, #e0f7fa, #fce4ec);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: gradientShift 10s infinite alternate;
        }

        @keyframes gradientShift {
            0% { background: linear-gradient(135deg, #e3f2fd, #e0f7fa); }
            50% { background: linear-gradient(135deg, #e0f7fa, #fce4ec); }
            100% { background: linear-gradient(135deg, #fce4ec, #e3f2fd); }
        }

        .payment-container {
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
            animation: fadeInUp 1s ease-out;
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #2c3e50;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #003366;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 15px;
            outline: none;
        }

        .readonly {
            background-color: #f2f2f2;
            color: #555;
            font-weight: bold;
        }

        #payBtn {
            background-color: #28a745;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 10px;
            width: 100%;
            font-size: 16px;
            margin-top: 30px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #payBtn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="payment-container">
    <h2>Secure Payment</h2>
    <form action="process-payment" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" id="fullName" required placeholder="Enter your name">

        <label for="cardNumber">Card Number (12 digits):</label>
        <input type="text" name="cardNumber" id="cardNumber" maxlength="14" required placeholder="1234 5678 9012">

        <label for="cardPassword">Card Password (4 digits):</label>
        <input type="password" name="cardPassword" id="cardPassword" maxlength="4" required pattern="[0-9]{4}" inputmode="numeric" placeholder="****">

        <label for="roomType">Room Type:</label>
        <input type="text" name="roomType" value="<%= roomType %>" class="readonly" readonly>

        <label for="roomPrice">Room Price (Per Night):</label>
        <input type="text" name="roomPrice" value="<%= roomPrice %>" class="readonly" readonly>

        <label for="amount">Total Amount to Pay:</label>
        <input type="text" name="amount" value="<%= amount %>" class="readonly" readonly>

        <button type="submit" id="payBtn">Pay Now</button>
    </form>
</div>

<script>
    document.getElementById('cardNumber').addEventListener('input', function (e) {
        let input = e.target.value.replace(/\D/g, '').substring(0, 12);
        e.target.value = input.replace(/(.{4})/g, '$1 ').trim();
    });
</script>
</body>
</html>
