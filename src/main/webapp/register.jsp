<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/png" href="img/faviconHotel.png">
    <meta charset="utf-8">
    <title>Elite Stay | Register</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #fceabb, #f8b500, #e0c3fc, #8ec5fc);
            background-size: 400% 400%;
            animation: gradientShift 15s ease infinite;
            font-family: 'Montserrat', sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .login-form {
            background: rgba(255, 255, 255, 0.75);
            backdrop-filter: blur(12px);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 12px 32px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
            transition: transform 0.3s ease;
        }

        .login-form:hover {
            transform: translateY(-5px);
        }

        .login-form label {
            font-weight: 600;
            color: #333;
        }

        .login-form .form-control {
            border-radius: 12px;
            padding: 10px 15px;
            border: 1px solid #ccc;
        }

        .login-form .button button {
            width: 100%;
            background: linear-gradient(135deg, #007bff, #6a11cb);
            border: none;
            color: white;
            padding: 12px;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 600;
        }

        .login-form .button button:hover {
            background: linear-gradient(135deg, #0056b3, #3b0764);
        }

        #login {
            flex: 1;
            display: flex;
            align-items: center;
            padding: 80px 0;
        }

        .form-check-label {
            font-size: 14px;
            color: #444;
        }
    </style>
</head>
<body>

<!-- Header -->
<header id="header">
    <a href="index.jsp" class="logo"><img src="img/logo.jpg" alt="logo" style="height: 50px;"></a>
    <div class="phone"><i class="fa fa-phone"></i>+91 94249 82832</div>
    <nav class="main-menu top-menu">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="room.jsp">Rooms</a></li>
            <li><a href="amenities.jsp">Amenities</a></li>
            <li><a href="booking.jsp">Booking</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li class="active"><a href="register.jsp">Register</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
    </nav>
</header>

<!-- Registration Section -->
<div id="login">
    <div class="container">
        <div class="section-header text-center mb-5">
            <h2>Register</h2>
            <p>Create your Elite Stay account and enjoy seamless bookings.</p>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="login-form">

                    <!-- Error Display Block -->
                    <%
                        String error = request.getParameter("error");
                        if (error != null) {
                    %>
                        <div class="alert alert-danger text-center mb-4"><%= error %></div>
                    <%
                        }
                    %>

                    <form action="AddNewUser" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Your Name</label>
                                <input type="text" name="name" class="form-control" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" id="password" minlength="4" maxlength="14" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Retype Password</label>
                                <input type="password" name="repeat_password" class="form-control" id="retypePassword" minlength="4" maxlength="14" required>
                            </div>
                        </div>
                        
                        <div class="form-check mb-3">
                            <input type="checkbox" class="form-check-input" id="togglePassword" onclick="togglePasswords()">
                            <label class="form-check-label" for="togglePassword">Show Password</label>
                        </div>
                        <div class="button">
                            <button type="submit">Register</button>
                        </div>
                        <p class="mt-4 text-center">Already have an account? <a href="login.jsp">Login here</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<div id="footer">
    <div class="container text-center">
        <div class="social mb-3">
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-facebook-f"></i></a>
        </div>
        <p>&copy; 2045 <a href="#">Elite Stay</a> | Designed by <a href="https://htmlcodex.com">HTML Codex</a></p>
    </div>
</div>

<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
    function togglePasswords() {
        const pwd = document.getElementById("password");
        const retype = document.getElementById("retypePassword");
        const type = pwd.type === "password" ? "text" : "password";
        pwd.type = type;
        retype.type = type;
    }
</script>
</body>
</html>
