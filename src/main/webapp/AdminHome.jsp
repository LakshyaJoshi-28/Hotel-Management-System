<%@ page import="com.hotel.pojo.UserInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    UserInfo user = (UserInfo) session.getAttribute("user");
    if (user == null || !"admin".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
 <!-- Favicon -->
    <link rel="icon" type="image/png" href="img/faviconHotel.png">
    <meta charset="utf-8">
    <title>Admin Home - The Elite Stay</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background: linear-gradient(270deg, #89f7fe, #66a6ff, #fbc2eb, #a6c1ee);
            background-size: 800% 800%;
            animation: gradientShift 15s ease infinite;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .custom-navbar {
            background-color: #000;
            color: yellow;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 30px;
        }

        .navbar-left {
            font-size: 24px;
            font-weight: bold;
            color: yellow;
        }

        .navbar-center a {
            color: yellow;
            text-decoration: none;
            margin: 0 15px;
            font-weight: 500;
            transition: color 0.3s;
        }

        .navbar-center a:hover {
            color: white;
        }

        .navbar-right {
            color: yellow;
        }

        .login_section {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 100px);
        }

        .card-signin {
            background: rgba(255, 255, 255, 0.85);
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            padding: 35px;
            text-align: center;
            animation: fadeInUp 1s ease forwards;
            opacity: 0;
        }

        @keyframes fadeInUp {
            0% {
                transform: translateY(30px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        .more-options-btn {
            text-decoration: none;
            padding: 12px 30px;
            font-size: 18px;
            background-image: linear-gradient(to right, #00b09b, #96c93d);
            color: white;
            border-radius: 8px;
            display: inline-block;
            margin-top: 25px;
            transition: all 0.4s ease;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            position: relative;
            overflow: hidden;
        }

        .more-options-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        .logout-floating {
            position: fixed;
            top: 60px;
            right: 30px;
            background-image: linear-gradient(to right, #fc466b, #3f5efb);
            color: white;
            padding: 12px 22px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 500;
            box-shadow: 0 6px 16px rgba(0,0,0,0.25);
            transition: all 0.4s ease;
            z-index: 999;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .logout-floating i {
            font-size: 16px;
        }

        .logout-floating:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 30px rgba(0,0,0,0.35);
            background-image: linear-gradient(to right, #3f5efb, #fc466b);
        }

        .button-container {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-top: 30px;
        }
    </style>
</head>

<body>

    <!-- Floating Logout Button -->
    <a href="logout.jsp" class="logout-floating">
        <i class="fa fa-sign-out"></i> Logout
    </a>

    <!-- Custom Navbar -->
    <div class="custom-navbar">
        <div class="navbar-left">THE ELITE-STAY</div>
        <div class="navbar-center">
            <a href="AdminHome.jsp">ADMIN HOME</a>
            <a href="adminactivities.jsp">ADMIN ACTIVITIES</a>
            <a href="booking.jsp">Booking</a>
            <a href="ViewBooking.jsp">View All Bookings</a>
            <a href="ViewPayments.jsp">View All Payments</a>
            
            <a href="login.jsp">LOGIN</a>
        </div>
         <div class="navbar-right">
           <!--  <i class="fa fa-phone"></i> +91 9424982832  -->
        </div>
        
    </div>

    <!-- Main Body -->
    <div class="login_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">
                            <h5 class="card-title">Admin Room Home Page</h5>
                            <h3>WELCOME <%= user.getName() %> to The Elite Stay</h3>

                            <div class="button-container">
                                <a href="adminactivities.jsp" class="more-options-btn">More Options</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

   <!-- Footer Section Start -->
        <div id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="social">
                            <a href=""><li class="fa fa-instagram"></li></a>
                            <a href=""><li class="fa fa-twitter"></li></a>
                            <a href=""><li class="fa fa-facebook-f"></li></a>
                        </div>
                    </div>
                    <div class="col-12">
                        <p>Copyright &#169; 2025 <a href="">Click2Stay</a> All Rights Reserved.</p>
						
						<!--/*** This template is free as long as you keep the footer authorÃ¢ÂÂs credit link/attribution link/backlink. If you'd like to use the template without the footer authorÃ¢ÂÂs credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						<p>Designed By <a href="https://htmlcodex.com">Java Experts</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Section End -->
</body>
</html>
