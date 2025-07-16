<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>The Elite-Stay | Standard Single Booking</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(120deg, #e0f7fa, #fce4ec, #e3f2fd);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            animation: bgShift 10s infinite alternate;
        }

        @keyframes bgShift {
            0% { background: linear-gradient(120deg, #e0f7fa, #fce4ec); }
            50% { background: linear-gradient(120deg, #fce4ec, #e3f2fd); }
            100% { background: linear-gradient(120deg, #e3f2fd, #e0f7fa); }
        }

        h2 {
            text-align: center;
            margin-top: 40px;
            color: #2c3e50;
            font-size: 32px;
            animation: fadeIn 1s ease-in-out;
        }

        form {
            background-color: #ffffff;
            max-width: 500px;
            margin: 40px auto;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            animation: slideUp 1s ease-in-out;
        }

        label {
            display: block;
            margin-top: 20px;
            font-weight: bold;
            color: #003366;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        select {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
        }

        .readonly-field {
            background-color: #f1f1f1;
            color: #555;
            font-weight: bold;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            width: 100%;
            margin-top: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes slideUp {
            from { transform: translateY(30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>
<body>

<h2>Book Your Standard Double Room</h2>

<form id="bookingForm" method="post" action="book-room">
    <label for="name">Your Name:</label>
    <input type="text" id="name" name="name" placeholder="Enter your full name" required>

    <label for="email">Email Address:</label>
    <input type="email" id="email" name="email" placeholder="Enter your email" required>

    <label for="checkin">Check-In Date:</label>
    <input type="date" id="checkin" name="checkin" required>

    <label for="checkout">Check-Out Date:</label>
    <input type="date" id="checkout" name="checkout" required>

    <label for="adults">Adults:</label>
    <select id="adults" name="adults" required>
        <option value="">Select Adults</option>
        <option value="1">1 Adult</option>
        <option value="2">2 Adults</option>
        <option value="3">3 Adults</option>
        <option value="4">4 Adults</option>
    </select>

    <label for="children">Children:</label>
    <select id="children" name="children" required>
        <option value="">Select Children</option>
        <option value="0">0 Children</option>
        <option value="1">1 Child</option>
        <option value="2">2 Children</option>
        <option value="3">3 Children</option>
    </select>

    <label for="roomType">Room Type:</label>
    <input type="text" id="roomType" name="roomType" value="Standard Double" class="readonly-field" readonly>

    <label for="price">Price (Per Night):</label>
    <input type="text" id="price" name="price" value="₹4000" class="readonly-field" readonly>

    <label for="totalAmount">Total Amount:</label>
    <input type="text" id="totalAmount" value="₹4000" class="readonly-field" readonly>

    <!-- ✅ Hidden input to submit raw numeric amount -->
    <input type="hidden" id="hiddenAmount" name="totalAmount" value="4000">

    <input type="submit" value="Confirm Booking">
</form>

<script>
    const checkinInput = document.getElementById('checkin');
    const checkoutInput = document.getElementById('checkout');
    const totalAmountInput = document.getElementById('totalAmount');
    const hiddenAmount = document.getElementById('hiddenAmount');
    const pricePerNight = 4000;

    function calculateTotalAmount() {
        const checkin = new Date(checkinInput.value);
        const checkout = new Date(checkoutInput.value);

        if (checkin && checkout && checkout > checkin) {
            const diffTime = checkout - checkin;
            const nights = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
            const total = nights * pricePerNight;
            totalAmountInput.value = "₹" + total;
            hiddenAmount.value = total;
        } else {
            totalAmountInput.value = "₹4000";
            hiddenAmount.value = "4000";
        }
    }

    checkinInput.addEventListener('change', calculateTotalAmount);
    checkoutInput.addEventListener('change', calculateTotalAmount);
</script>

</body>
</html>
