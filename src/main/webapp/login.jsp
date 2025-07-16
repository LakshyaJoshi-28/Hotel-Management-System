<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Elite Stay | Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="img/faviconHotel.png">

    <!-- Bootstrap & Font Awesome -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- Custom CSS -->
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
            background: rgba(255, 255, 255, 0.85);
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
            transition: box-shadow 0.3s ease, border-color 0.3s ease;
        }

        .login-form .form-control:focus {
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.4);
            border-color: #007bff;
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
            transition: background 0.4s ease;
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

        .section-header h2 {
            font-weight: 700;
            color: #222;
        }

        .section-header p {
            color: #555;
        }

        #footer {
            background: #f8f9fa;
            padding: 20px 0;
            border-top: 1px solid #ddd;
        }

        .error-msg {
            color: red;
            font-weight: 600;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<%@include file="header.jsp" %>


<!-- Login Section -->
<div id="login">
    <div class="container">
        <div class="section-header text-center mb-4">
            <h2>Login</h2>
            <p>Welcome back to Elite Stay. Please log in to continue.</p>
        </div>

        <% String error = request.getParameter("error"); %>
        <% if (error != null) { %>
            <div class="error-msg"><%= error %></div>
        <% } %>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="login-form">
                    <form action="LoginServlet" method="post">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control mb-3" required>

                        <label>Password</label>
                        <input type="password" name="password" class="form-control mb-4" required>

                        <div class="button">
                            <button type="submit">Login</button>
                        </div>

                        <p class="mt-4 text-center">
                            Don't have an account? <a href="register.jsp">Register here</a>
                        </p>
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

</body>
</html>
