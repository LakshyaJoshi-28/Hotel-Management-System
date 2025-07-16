<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <!-- Favicon -->
    <link rel="icon" type="image/png" href="img/faviconHotel.png">
    
    <meta charset="utf-8">
    <title>The Elite-stay | Contact</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <link href="img/favicon.ico" rel="icon">
    <link href="img/apple-favicon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet"> 

    <!-- Vendor CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="vendor/slick/slick.css" rel="stylesheet">
    <link href="vendor/slick/slick-theme.css" rel="stylesheet">
    <link href="vendor/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Custom Styles -->
    <link href="css/hover-style.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <style type="text/css">
    html, body {
    height: 100%;
    margin: 0;
}

.page-wrapper {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.main-content {
    flex: 1;
}</style>
</head>

<body>
	
    <%@include file="header.jsp" %>
    

    <!-- Contact Section -->
    <div id="contact">
        <div class="container">
            <div class="section-header">
                <h2>Contact</h2>
                <p>
                    Have a question or need assistance with your booking? We’re here to help!<br>
                    Reach out to The Elite-stay team anytime — whether it’s about reservations, special requests, or general inquiries.<br>
                    We look forward to making your stay unforgettable.
                </p>
            </div>
            <div class="row contact-info">
                <div class="col-md-4">
                    <div class="info-item">
                        <p><i class="fa fa-map-marker"></i> Vijay Nagar, Indore</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-item">
                        <p><i class="fa fa-envelope"></i> <a href="mailto:elitestay@gmail.com">elitestay@gmail.com</a></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-item">
                        <p><i class="fa fa-phone"></i> <a href="tel:+919424982832">+91 9424982832</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@include file="Footer.jsp" %>

    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

    <!-- Vendor JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>