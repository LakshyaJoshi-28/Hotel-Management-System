
<!DOCTYPE html>
<html lang="en">
    <head>
     <!-- Favicon -->
    <link rel="icon" type="image/png" href="img/faviconHotel.png">
    
    
        <meta charset="utf-8">
        <title>The Elite-Stay | Responsive Travel & Tourism Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicons -->
        <link href="img/favicon.ico" rel="icon">
        <link href="img/apple-favicon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet"> 

        <!-- Vendor CSS File -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/slick/slick.css" rel="stylesheet">
        <link href="vendor/slick/slick-theme.css" rel="stylesheet">
        <link href="vendor/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Main Stylesheet File -->
        <link href="css/hover-style.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        
        
        
        
        
        
        
        
        
    </head>

    <body>
        <!-- Header Section Start -->
        <%@include file="header.jsp" %>
        <!-- Header Section End -->
        
        
        <!-- check room availability start -->	

<style>
.check-btn {
    display: inline-block;
    padding: 12px 24px;
    background-color: #28a745;
    color: white;
    text-decoration: none;
    font-size: 16px;
    border-radius: 8px;
    font-weight: bold;
    text-align: center;
    transition: background-color 0.3s ease;
}

.check-btn:hover {
    background-color: #218838;
}

/* Centering container */
.center-btn {
    text-align: center;
    margin-top: 40px; /* optional spacing */
}
</style>

<!-- Centered Button -->
<!-- 
<div class="center-btn">
    <a href="checkroomavailibility.jsp" class="check-btn">Check Room Availability</a>
</div>


  -->
<!-- check room availibility end -->
        
        
       
        
        
   

<!-- Room Section Start -->
        <div id="rooms">
            <div class="container">
                <div class="section-header">
                    <h2>Room Booking</h2>
                    <p>
                        Our rooms are designed for ultimate comfort, style, and modern convenience.
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="room-img">
                                    <div class="box12">
                                        <img src="img/room/room-1.jpg">
                                        <div class="box-content">
                                            <h3 class="title">Standard Single</h3>
                                            <ul class="icon">
                                                <li><a href="#" data-toggle="modal" data-target="#modal-id"><i class="fa fa-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="room-des">
                                    <h3><a href="#" data-toggle="modal" data-target="#modal-id">Standard Single</a></h3>
                                    <p>A well-appointed room for solo stays with all necessities.</p>
                                    <ul class="room-size">
                                        <li><i class="fa fa-arrow-right"></i>Size: 260 sq ft </li>
                                        <li><i class="fa fa-arrow-right"></i>Beds: 2 Single(s) </li>
                                    </ul>
                                    <ul class="room-icon">
                                        <li class="icon-1"></li>
                                        <li class="icon-2"></li>
                                        <li class="icon-3"></li>
                                        <li class="icon-4"></li>
                                        <li class="icon-5"></li>
                                        <li class="icon-6"></li>
                                        <li class="icon-7"></li>
                                        <li class="icon-8"></li>
                                        <li class="icon-9"></li>
                                        <li class="icon-10"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="room-rate">
                                    <h3>From</h3>
                                    <h1>3000/-</h1>
                                     <a href="Bookingstandardsingle.jsp" class="book-now-btn">Book Now</a>  
                                    
                                </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                    
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="room-img">
                                    <div class="box12">
                                        <img src="img/room/room-2.jpg">
                                        <div class="box-content">
                                            <h3 class="title">Standard Double</h3>
                                            <ul class="icon">
                                                <li><a href="#" data-toggle="modal" data-target="#modal-id"><i class="fa fa-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="room-des">
                                    <h3><a href="#" data-toggle="modal" data-target="#modal-id">Standard Double</a></h3>
                                    <p>Comfortable space for two, ideal for friends or couples.</p>
                                    <ul class="room-size">
                                        <li><i class="fa fa-arrow-right"></i>Size: 350 sq ft </li>
                                        <li><i class="fa fa-arrow-right"></i>Beds: 2 Double(s) </li>
                                    </ul>
                                    <ul class="room-icon">
                                        <li class="icon-1"></li>
                                        <li class="icon-2"></li>
                                        <li class="icon-3"></li>
                                        <li class="icon-4"></li>
                                        <li class="icon-5"></li>
                                        <li class="icon-6"></li>
                                        <li class="icon-7"></li>
                                        <li class="icon-8"></li>
                                        <li class="icon-9"></li>
                                        <li class="icon-10"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="room-rate">
                                    <h3>From</h3>
                                    <h1>4000/-</h1>
                              <a href="Bookingstandarddouble.jsp" class="book-now-btn">Book Now</a> 
                                    
                               </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                    
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="room-img">
                                    <div class="box12">
                                        <img src="img/room/room-3.jpg">
                                        <div class="box-content">
                                            <h3 class="title">Premium Single</h3>
                                            <ul class="icon">
                                                <li><a href="#" data-toggle="modal" data-target="#modal-id"><i class="fa fa-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="room-des">
                                    <h3><a href="#" data-toggle="modal" data-target="#modal-id">Premium Single</a></h3>
                                    <p>Stylishly designed with added features for a refined experience.</p>
                                    <ul class="room-size">
                                        <li><i class="fa fa-arrow-right"></i>Size: 200 sq ft </li>
                                        <li><i class="fa fa-arrow-right"></i>Beds: 2 Single(s) </li>
                                    </ul>
                                    <ul class="room-icon">
                                        <li class="icon-1"></li>
                                        <li class="icon-2"></li>
                                        <li class="icon-3"></li>
                                        <li class="icon-4"></li>
                                        <li class="icon-5"></li>
                                        <li class="icon-6"></li>
                                        <li class="icon-7"></li>
                                        <li class="icon-8"></li>
                                        <li class="icon-9"></li>
                                        <li class="icon-10"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="room-rate">
                                    <h3>From</h3>
                                    <h1>5000/-</h1>
                                <a href="Bookingpremiumsingle.jsp" class="book-now-btn">Book Now</a> 
                                    
                                </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                    
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="room-img">
                                    <div class="box12">
                                        <img src="img/room/room-4.jpg">
                                        <div class="box-content">
                                            <h3 class="title">Silver Double</h3>
                                            <ul class="icon">
                                                <li><a href="#" data-toggle="modal" data-target="#modal-id"><i class="fa fa-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="room-des">
                                    <h3><a href="#" data-toggle="modal" data-target="#modal-id">Silver Double</a></h3>
                                    <p>Stylish and affordable, offering great value with added comfort.</p>
                                    <ul class="room-size">
                                        <li><i class="fa fa-arrow-right"></i>Size: 200 sq ft </li>
                                        <li><i class="fa fa-arrow-right"></i>Beds: 2 Double(s) </li>
                                    </ul>
                                    <ul class="room-icon">
                                        <li class="icon-1"></li>
                                        <li class="icon-2"></li>
                                        <li class="icon-3"></li>
                                        <li class="icon-4"></li>
                                        <li class="icon-5"></li>
                                        <li class="icon-6"></li>
                                        <li class="icon-7"></li>
                                        <li class="icon-8"></li>
                                        <li class="icon-9"></li>
                                        <li class="icon-10"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="room-rate">
                                    <h3>From</h3>
                                    <h1>6000/-</h1>
                                  <a href="Bookingsilverdouble.jsp">Book Now</a>   
                                </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                    
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="room-img">
                                    <div class="box12">
                                        <img src="img/room/room-5.jpg">
                                        <div class="box-content">
                                            <h3 class="title">Premium Double</h3>
                                            <ul class="icon">
                                                <li><a href="#" data-toggle="modal" data-target="#modal-id"><i class="fa fa-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="room-des">
                                    <h3><a href="#" data-toggle="modal" data-target="#modal-id">Premium Double</a></h3>
                                    <p>Spacious and luxurious with superior furnishings and services.</p>
                                    <ul class="room-size">
                                        <li><i class="fa fa-arrow-right"></i>Size: 450 sq ft </li>
                                        <li><i class="fa fa-arrow-right"></i>Beds: 2 Double(s) </li>
                                    </ul>
                                    <ul class="room-icon">
                                        <li class="icon-1"></li>
                                        <li class="icon-2"></li>
                                        <li class="icon-3"></li>
                                        <li class="icon-4"></li>
                                        <li class="icon-5"></li>
                                        <li class="icon-6"></li>
                                        <li class="icon-7"></li>
                                        <li class="icon-8"></li>
                                        <li class="icon-9"></li>
                                        <li class="icon-10"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="room-rate">
                                    <h3>From</h3>
                                    <h1>7000/-</h1>
                                 <a href="Bookingpremiumdouble.jsp">Book Now</a>   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Room Section End -->
        
	<!-- check room availability start -->	
<!--  
<style>
.check-btn {
    display: inline-block;
    padding: 12px 24px;
    background-color: #28a745;
    color: white;
    text-decoration: none;
    font-size: 16px;
    border-radius: 8px;
    font-weight: bold;
    text-align: center;
    transition: background-color 0.3s ease;
}

.check-btn:hover {
    background-color: #218838;
}

/* Centering container */
.center-btn {
    text-align: center;
    margin-top: 40px; /* optional spacing */
}
</style>
-->
<!-- Centered Button -->
<!--  
<div class="center-btn">
    <a href="CheckRoomAvailablility.jsp" class="check-btn">Check Room Availability</a>
</div>
-->

<!-- check room availibility end -->






       <!-- Search Section Start -->
      <!--  <div id="search" style="background: #f2f2f2;">
            <div class="container">
                <div class="form-row">
                    <div class="control-group col-md-3">
                        <label>Check-In</label>
                        <div class="form-group">
                            <div class="input-group date" id="date-3" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input" data-target="#date-3"/>
                                <div class="input-group-append" data-target="#date-3" data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group col-md-3">
                        <label>Check-Out</label>
                        <div class="form-group">
                            <div class="input-group date" id="date-4" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input" data-target="#date-4"/>
                                <div class="input-group-append" data-target="#date-4" data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group col-md-3">
                        <div class="form-row">
                            <div class="control-group col-md-6">
                                <label>Adult</label>
                                <select class="custom-select">
                                    <option selected>0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                            <div class="control-group col-md-6 kid">
                                <label>Kid</label>
                                <select class="custom-select">
                                    <option selected>0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="control-group col-md-3">
                        <button class="btn btn-block">Search</button>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Search Section End -->  
        
        <!-- Booking Section Start -->
        
        <!-- 
        <div id="booking">
            <div class="container">
                <div class="section-header">
                    <h2> Form Filling</h2>
                    <p>
                        Rooms offer a perfect blend of comfort and modern technology, including smart climate control and high-speed Wi-Fi. Elegant interiors and premium amenities ensure a relaxing and luxurious stay.
                    </p>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="booking-form">
                            <div id="success"></div>
                            <form name="sentMessage" id="bookingForm" novalidate="novalidate">
                                <div class="form-row">
                                    <div class="control-group col-md-6">
                                        <label>First Name</label>
                                        <input type="text" class="form-control" id="fname" placeholder="Enter first name" required="required" data-validation-required-message="Please enter first name" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group col-md-6">
                                        <label>Last Name</label>
                                        <input type="text" class="form-control" id="lname" placeholder="Enter last name" required="required" data-validation-required-message="Please enter last name" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="control-group col-md-6">
                                        <label>Mobile</label>
                                        <input type="text" class="form-control" id="mobile" placeholder="+91 942498****" required="required" data-validation-required-message="Please enter your mobile number" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group col-md-6">
                                        <label>Email</label>
                                        <input type="email" class="form-control" id="email" placeholder="----@gmail.com" required="required" data-validation-required-message="Please enter your email" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="control-group col-md-6">
                                        <label>Check-In</label>
                                        <input type="text" class="form-control datetimepicker-input" id="date-1" data-toggle="datetimepicker" data-target="#date-1" placeholder="E.g. MM/DD/YYYY" required="required" data-validation-required-message="Please enter date"/>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group col-md-6">
                                        <label>Check-Out</label>
                                        <input type="text" class="form-control datetimepicker-input" id="date-2" data-toggle="datetimepicker" data-target="#date-2" placeholder="E.g. MM/DD/YYYY" required="required" data-validation-required-message="Please enter date"/>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label>Special Request</label>
                                    <input type="text" class="form-control" id="request" placeholder="E.g. Special Request" required="required" data-validation-required-message="Please enter your special request" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="button"><button type="submit" id="bookingButton">Book Now</button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         -->
        <!-- Booking Section End -->
        
        <!-- Footer Section Start -->
       <%@include file="Footer.jsp" %>
        <!-- Footer Section End -->
        
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- Vendor JavaScript File -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/jquery/jquery-migrate.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/easing/easing.min.js"></script>
        <script src="vendor/stickyjs/sticky.js"></script>
        <script src="vendor/superfish/hoverIntent.js"></script>
        <script src="vendor/superfish/superfish.min.js"></script>
        <script src="vendor/wow/wow.min.js"></script>
        <script src="vendor/slick/slick.min.js"></script>
        <script src="vendor/tempusdominus/js/moment.min.js"></script>
        <script src="vendor/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="vendor/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
        
        <!-- Booking Javascript File -->
        <script src="js/booking.js"></script>
        <script src="js/jqBootstrapValidation.min.js"></script>
  
        <!-- Main Javascript File -->
        <script src="js/main.js"></script>
    </body>
</html>
