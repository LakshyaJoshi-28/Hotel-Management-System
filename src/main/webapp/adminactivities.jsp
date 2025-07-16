<%@ page import="com.hotel.pojo.UserInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
    <meta charset="UTF-8">
    <title>Admin Activities | Elite Stay</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(-45deg, #ffecd2, #fcb69f, #a1c4fd, #c2e9fb);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        @keyframes gradientBG {
            0% {background-position: 0% 50%;}
            50% {background-position: 100% 50%;}
            100% {background-position: 0% 50%;}
        }

        .card {
            background: rgba(255, 255, 255, 0.95);
            padding: 45px;
            border-radius: 20px;
            box-shadow: 0 12px 28px rgba(0, 0, 0, 0.15);
            text-align: center;
            width: 420px;
            animation: fadeInUp 1s ease-out;
        }

        h1 {
            font-size: 32px;
            color: #2d3436;
            margin-bottom: 30px;
            font-weight: 700;
        }

        ul.options-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        ul.options-list li {
            margin: 15px 0;
        }

        ul.options-list li a {
            display: inline-block;
            width: 100%;
            padding: 14px 20px;
            font-size: 17px;
            color: #2c3e50;
            background: #f8f9fa;
            border-radius: 10px;
            text-decoration: none;
            box-shadow: 0 4px 10px rgba(0,0,0,0.08);
            transition: all 0.3s ease;
            transform: translateY(0);
        }

        ul.options-list li a:hover {
            background: #6c5ce7;
            color: white;
            transform: translateY(-4px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .back-button {
            margin-top: 30px;
            text-align: center;
        }

        .back-button a {
            display: inline-block;
            padding: 13px 30px;
            background-color: #00b894;
            color: white;
            text-decoration: none;
            font-size: 16px;
            font-weight: 500;
            border-radius: 10px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .back-button a:hover {
            background-color: #019875;
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.2);
        }

        @keyframes fadeInUp {
            from {
                transform: translateY(40px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @media screen and (max-width: 500px) {
            .card {
                width: 90%;
                padding: 30px;
            }
        }
    </style>
</head>
<body>

    <div class="card">
        <h1>More Options</h1>
        <ul class="options-list">
            <li><a href="addroom.jsp">Add Room</a></li>
            <li><a href="updateroom.jsp">Update Room</a></li>
            <li><a href="deleteroom.jsp">Delete Room</a></li>
            <li><a href="searchroom.jsp">Search Room</a></li>
           <li><a href="ListAvailableRoomsServlet">List of Available Rooms</a></li>
           <li>
    <form method="post" action="DisplayAllRoomsServlet" style="margin: 0;">
        <button type="submit" style="width: 100%; padding: 14px 20px; font-size: 17px; color: #2c3e50; background: #f8f9fa; border: none; border-radius: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.08); transition: all 0.3s ease; cursor: pointer;"
            onmouseover="this.style.background='#6c5ce7'; this.style.color='white'; this.style.transform='translateY(-4px)'; this.style.boxShadow='0 8px 16px rgba(0, 0, 0, 0.2)'"
            onmouseout="this.style.background='#f8f9fa'; this.style.color='#2c3e50'; this.style.transform='translateY(0)'; this.style.boxShadow='0 4px 10px rgba(0,0,0,0.08)'">
            Display All Rooms
        </button>
    </form>
</li>
           
           <!--  <li><a href="DisplayAllRoomsServlet">Display All Rooms</a></li> -->
        </ul>
    </div>

    <div class="back-button">
        <a href="AdminHome.jsp">← Back to Dashboard</a>
    </div>

</body>
</html>
