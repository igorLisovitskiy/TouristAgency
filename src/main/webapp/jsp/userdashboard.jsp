<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.lisovitskyi.pojos.*"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<title>Home-</title>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/userdashboard.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/userdashboard.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Include Date Range Picker -->
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
     <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.css" />
    <style>
        .myLink {
            display: none
        }
    </style>
</head>
<body class="user-light-grey">
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">++ProTravel</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
            	<c:if test="${user.role == 1 || user.role == 0}">
            	<li>
                    <a href="adminpanel" aria-haspopup="true" aria-expanded="false"><i class="fa fa-dashboard fa-fw"></i> Site Administration</a>
                </li>
            	</c:if>
                <li>
                    <a href="contacts" aria-haspopup="true" aria-expanded="false"><i class="fa fa-envelope fa-fw"></i> Contact us</a>
                </li>
                <c:if test="${not empty user.username}">
             	<li class="dropdown">
		            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Welcome, ${user.username} 
		                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
		            </a>
		            <ul class="dropdown-menu dropdown-user">
		                <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
		            </li>
		                <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
		                </li>
		                <li class="divider"></li>
		                <li><a href="logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
		                </li>
		            </ul>
                </li>
                </c:if>
            </ul>
            </div>
        </div><!-- /.navbar-collapse -->
</nav>


<!-- Header -->
<header class="user-display-container user-content user-hide-small" style="max-width:1500px">
    <img class="user-image" src="images/london2.jpg" alt="London" width="1500" height="700">
    <div class="user-display-middle" style="width:65%">
        <div class="user-bar user-black">
            <button class="user-bar-item user-button tablink" onclick="openLink(event, 'Tour');"><i
                    class="fa fa-globe user-margin-right"></i>Tour
            </button>
            <button class="user-bar-item user-button tablink" onclick="openLink(event, 'Flight');"><i
                    class="fa fa-plane user-margin-right"></i>Flight
            </button>
            <button class="user-bar-item user-button tablink" onclick="openLink(event, 'Hotel');"><i
                    class="fa fa-bed user-margin-right"></i>Hotel
            </button>
            <button class="user-bar-item user-button tablink" onclick="openLink(event, 'Car');"><i
                    class="fa fa-car user-margin-right"></i>Rental
            </button>
        </div>

        <!-- Tabs -->
    <!-- Tabs -->
    <div id="Tour" class="user-container user-white user-padding-16 myLink">
    <h3>Travel the world with us</h3>
    <div class="input-group input-daterange">
    <div class="input-group-addon">From</div>
    <input type="text" class="form-control" data-date-end-date="0d" placeholder="mm/dd/yyyy">
    <div class="input-group-addon">to</div>
    <input type="text" class="form-control" id="endDate" placeholder="mm/dd/yyyy">
    </div>
    <p>
    <button class="user-button user-dark-grey">Search and find dates</button>
    </p>
    </div>

    <div id="Flight" class="user-container user-white user-padding-16 myLink">
    <h3>Travel the world with us</h3>
    <div class="input-group input-daterange">
    <div class="input-group-addon">From</div>
    <input type="text" class="form-control" placeholder="Departing from">
    <div class="input-group-addon">to</div>
    <input type="text" class="form-control" placeholder="Arriving at">
    </div>
    <p>
    <button class="user-button user-dark-grey">Search and find dates</button>
    </p>
    </div>

        <div id="Hotel" class="user-container user-white user-padding-16 myLink">
            <h3>Find the best hotels</h3>
            <p>Book a hotel with us and get the best fares and promotions.</p>
            <p>We know hotels - we know comfort.</p>
            <p>
                <button class="user-button user-dark-grey">Search Hotels</button>
            </p>
        </div>

        <div id="Car" class="user-container user-white user-padding-16 myLink">
            <h3>Best car rental in the world!</h3>
            <p><span class="user-tag user-deep-orange">DISCOUNT!</span> Special offer if you book today: 25% off
                anywhere in the world with CarServiceRentalRUs</p>
            <input class="user-input user-border" type="text" placeholder="Pick-up point">
            <p>
                <button class="user-button user-dark-grey">Search Availability</button>
            </p>
        </div>
    </div>
</header>

<!-- Page content -->
<div class="user-content" style="max-width:1100px;">

    <!-- Good offers -->
    <div class="user-container user-margin-top">
        <h3>Good Offers Right Now</h3>
        <h6>Up to <strong>50%</strong> discount.</h6>
    </div>
    <div class="user-row-padding user-text-white user-large">
        <div class="user-half user-margin-bottom">
            <div class="user-display-container">
                <img src="images/cinqueterre.jpg" alt="Cinque Terre" style="width:100%">
                <span class="user-display-bottomleft user-padding">Cinque Terre</span>
            </div>
        </div>
        <div class="user-half">
            <div class="user-row-padding" style="margin:0 -16px">
                <div class="user-half user-margin-bottom">
                    <div class="user-display-container">
                        <img src="images/newyork2.jpg" alt="New York" style="width:100%">
                        <span class="user-display-bottomleft user-padding">New York</span>
                    </div>
                </div>
                <div class="user-half user-margin-bottom">
                    <div class="user-display-container">
                        <img src="images/sanfran.jpg" alt="San Francisco" style="width:100%">
                        <span class="user-display-bottomleft user-padding">San Francisco</span>
                    </div>
                </div>
            </div>
            <div class="user-row-padding" style="margin:0 -16px">
                <div class="user-half user-margin-bottom">
                    <div class="user-display-container">
                        <img src="images/pisa.jpg" alt="Pisa" style="width:100%">
                        <span class="user-display-bottomleft user-padding">Pisa</span>
                    </div>
                </div>
                <div class="user-half user-margin-bottom">
                    <div class="user-display-container">
                        <img src="images/paris.jpg" alt="Paris" style="width:100%">
                        <span class="user-display-bottomleft user-padding">Paris</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Explore Nature -->
    <div class="user-container">
        <h3>Explore Nature</h3>
        <p>Travel with us and see nature at its finest.</p>
    </div>
    <div class="user-row-padding">
        <div class="user-half user-margin-bottom">
            <img src="images/ocean2.jpg" alt="Norway" style="width:100%">
            <div class="user-container user-white">
                <h3>West Coast, Norway</h3>
                <p class="user-opacity">Roundtrip from $79</p>
                <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
                <button class="user-button user-margin-bottom">Buy Tickets</button>
            </div>
        </div>
        <div class="user-half user-margin-bottom">
            <img src="images/mountains2.jpg" alt="Austria" style="width:100%">
            <div class="user-container user-white">
                <h3>Mountains, Austria</h3>
                <p class="user-opacity">One-way from $39</p>
                <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
                <button class="user-button user-margin-bottom">Buy Tickets</button>
            </div>
        </div>
    </div>
<!-- Footer -->
<footer class="user-container user-center user-opacity user-margin-bottom">
</footer>
</body>
</html>
