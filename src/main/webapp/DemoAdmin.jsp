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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Room</title>

    <!-- Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        .login_section {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 100px);
        }

        .card-signin {
            background: #ffffffcc;
            border: none;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            padding: 30px;
        }

        .card-signin:hover {
            transform: scale(1.02);
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
            color: #3a3a3a;
            margin-bottom: 20px;
        }

        .card-body h3 {
            color: #333;
            font-weight: 600;
        }

        .card-body a {
            display: inline-block;
            background: #007BFF;
            color: #fff;
            padding: 12px 20px;
            margin: 10px 0;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 500;
            transition: background 0.3s ease-in-out;
        }

        .card-body a:hover {
            background: #0056b3;
        }
    </style>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const links = document.querySelectorAll('.card-body a');
            links.forEach(link => {
                link.addEventListener('mouseenter', () => {
                    link.style.transform = 'scale(1.05)';
                });
                link.addEventListener('mouseleave', () => {
                    link.style.transform = 'scale(1)';
                });
            });
        });
    </script>
</head>

<body>
    <!-- Header -->
<header id="header">
    <a href="index.jsp" class="logo"><img src="img/logo.jpg" alt="logo" style="height: 50px;"></a>
    <div class="phone"><i class="fa fa-phone"></i>+91 9424982832</div>
    <nav class="main-menu top-menu">
        <ul>
            <li><a href="index.jsp">HomeAdmin</a></li>
         <li><a href="index.jsp">AdminActivities</a></li>
            
            <li class="active"><a href="login.jsp">Login</a></li>
             <li class="active"><a href="logout.jsp">Logout</a></li>
       
        </ul>
    </nav>
</header>



    <div class="login_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">
                            <h5 class="card-title text-center">Admin Room Home Page</h5>
                            <h3>WELCOME <%= user.getName() %> to The Elite Stay</h3>
                            <br>

                            <!-- You can uncomment these if needed -->
                            <%-- 
                            <a href="AMDroom.jsp">Add / Update / Delete Room Details</a><br><br>
                            <a href="GetAllRoomServlet">List Of All Room</a><br><br>
                            <a href="SearchRoomServlet">Search Room</a><br><br>
                            <a href="logout.jsp">Logout</a><br><br>
                            --%>

                            <!-- More Options Button -->
                            <div style="text-align: center; margin-top: 30px;">
                                <a href="MoreOptions.jsp" style="
                                    text-decoration: none;
                                    padding: 10px 25px;
                                    font-size: 18px;
                                    background-color: #4CAF50;
                                    color: white;
                                    border-radius: 6px;
                                    border: none;
                                    display: inline-block;
                                    box-shadow: 0px 4px 8px rgba(0,0,0,0.2);">
                                    More Options
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="Footer.jsp" %>
</body>
</html>
