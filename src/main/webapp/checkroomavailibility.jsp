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
            margin-top: 10px;
            display: block;
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

        .result {
            margin-top: 20px;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Check Room Availability</h2>
    
    <label for="checkin">Check-In Date:</label>
    <input type="date" id="checkin">

    <label for="checkout">Check-Out Date:</label>
    <input type="date" id="checkout">

    <label for="adults">Adults:</label>
    <select id="adults">
        <option value="">Select</option>
        <option value="1">1 Adult</option>
        <option value="2">2 Adults</option>
        <option value="3">3 Adults</option>
        <option value="4">4 Adults</option>
    </select>

    <label for="children">Children:</label>
    <select id="children">
        <option value="">Select</option>
        <option value="0">0 Children</option>
        <option value="1">1 Child</option>
        <option value="2">2 Children</option>
        <option value="3">3 Children</option>
    </select>

    <label for="roomtype">Room Type:</label>
    <select id="roomtype">
        <option value="">Select Room Type</option>
        <option value="Standard Single">Standard Single</option>
        <option value="Standard Double">Standard Double</option>
        <option value="Premium Single">Premium Single</option>
        <option value="Silver Double">Silver Double</option>
        <option value="Premium Double">Premium Double</option>
    </select>

    <button onclick="checkAvailability()">Check Availability</button>

    <div class="result" id="result"></div>
</div>

<script>
    function checkAvailability() {
        const checkin = document.getElementById("checkin").value;
        const checkout = document.getElementById("checkout").value;
        const adults = document.getElementById("adults").value;
        const children = document.getElementById("children").value;
        const roomtype = document.getElementById("roomtype").value;
        const resultDiv = document.getElementById("result");

        if (!checkin || !checkout || !adults || children === "" || roomtype === "") {
            resultDiv.style.color = "red";
            resultDiv.innerHTML = "Please fill in all fields to check availability.";
        } else if (checkin >= checkout) {
            resultDiv.style.color = "red";
            resultDiv.innerHTML = "Check-out date must be after check-in date.";
        } else {
            resultDiv.style.color = "green";
            resultDiv.innerHTML = `Room Type: <strong>${roomtype}</strong><br>
                                   Available `;
        }
    }
</script>

</body>
</html>