<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Elite Stay | Hotel Booking</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- CSS and Fonts -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="vendor/slick/slick.css" rel="stylesheet">
    <link href="vendor/slick/slick-theme.css" rel="stylesheet">
    <link href="vendor/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="css/hover-style.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet"> 

    <style>
        body {
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            font-family: 'Montserrat', sans-serif;
        }

        .login-form {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .login-form form label {
            font-weight: 600;
            margin-bottom: 5px;
            display: block;
        }

        .login-form .form-control {
            border-radius: 12px;
            padding: 10px 15px;
        }

        .login-form .button button {
            width: 100%;
            background-color: #007bff;
            border: none;
            color: white;
            padding: 12px;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 600;
        }

        .login-form .button button:hover {
            background-color: #0056b3;
        }

        #login {
            padding: 80px 0;
        }
    </style>
</head>

<body>

    <!-- Header -->
    <header id="header">
        <a href="index.jsp" class="logo"><img src="img/logo.jpg" alt="logo"></a>
        <div class="phone"><i class="fa fa-phone"></i>+1 234 567 8900</div>
        <nav class="main-menu top-menu">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="room.jsp">Rooms</a></li>
                <li><a href="amenities.jsp">Amenities</a></li>
                <li><a href="booking.jsp">Booking</a></li>
                <li class="active"><a href="login.jsp">Login</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>

    <!-- Login/Registration Section -->
    <div id="login">
        <div class="container">
            <div class="section-header">
                <h2>Registration / Login</h2>
                <p>Welcome to Elite Stay. Register if new, or log in to manage bookings.</p>
            </div>
            <div class="row">
                <!-- Registration -->
                <div class="col-md-6">
                    <div class="login-form">
                        <form action="RegisterServlet" method="post">
                            <div class="form-row">
                                <div class="control-group col-sm-6">
                                    <label>Your Name</label>
                                    <input type="text" name="name" class="form-control" required />
                                </div>
                                <div class="control-group col-sm-6">
                                    <label>Email</label>
                                    <input type="email" name="email" class="form-control" required />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="control-group col-sm-6">
                                    <label>Your Password</label>
                                    <input type="password" name="password" class="form-control" required />
                                </div>
                                <div class="control-group col-sm-6">
                                    <label>Repeat Your Password</label>
                                    <input type="password" name="repeat_password" class="form-control" required />
                                </div>
                            </div>
                            <div class="button"><button type="submit">Registration</button></div>
                        </form>
                    </div>
                </div>

                <!-- Login -->
                <div class="col-md-6">
                    <div class="login-form">
                        <form action="LoginServlet" method="post">
                            <div class="form-row">
                                <div class="control-group col-sm-6">
                                    <label>Your Email</label>
                                    <input type="email" name="email" class="form-control" required />
                                </div>
                                <div class="control-group col-sm-6">
                                    <label>Your Password</label>
                                    <input type="password" name="password" class="form-control" required />
                                </div>
                            </div>
                            <div class="button"><button type="submit">Login</button></div>
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
                <a href=""><i class="fa fa-instagram"></i></a>
                <a href=""><i class="fa fa-twitter"></i></a>
                <a href=""><i class="fa fa-facebook-f"></i></a>
            </div>
            <p>&copy; 2045 <a href="#">Elite Stay</a> | Designed by <a href="https://htmlcodex.com">HTML Codex</a></p>
        </div>
    </div>

    <!-- JS Files -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>