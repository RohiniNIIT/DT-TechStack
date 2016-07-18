<!DOCTYPE html>
<html lang="en">
<head>

  <title>Online Shopping</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
      /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
	background-color: pink;
      margin-bottom: 50px;
      border-radius: 10px;
    }
    
    /* Remove the well's default bottom margin */
     .well {
	 background-color: lightblue;
      margin-bottom: 0%;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: lightblue;
      padding: 70px;
    }
	
	 .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
  
  text-align:base
  padding:100px,100px;
     width:40%;
      margin: 0 auto;
  }
  </style>
</head>
<body>

<div class="well">
  <div class="container text-center">
  
    <h1><strong><b><i>SMART DEALS</i></b></strong></h1>
    <h5>WELCOME TO THE ONLINE GADGETS</h5>
  </div>
</div>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
          </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="Admin.jsp">Home</a></li>
        <li><a href="Adminproduct.jsp">Products</a></li>
        
        <li><a href="Admincategory.jsp">Categories</a></li>
        <li><a href="Adminsupplier.jsp">Suppliers</a></li>
        <li><a href="Adminstores.jsp">Stores</a></li>
        <li><a href="Admincontact.jsp">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <!--  <li><a href="I/myaccount.jsp"><span class="glyphicon glyphicon-user">
	  </span> Your Account</a></li>
        <li><a href="I/cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>-->
    
    <li><a href="#"><span class="glyphicon welcome">
	  </span>Welcome!</a></li>
	  
	<li><a href="Adminlogin.jsp"><span class="glyphicon glyphicon-log-in"style="padding-right: 4px";>
	  </span>SignIn</a></li>
	  
	 <li><a href="AdminRegister.jsp"><span class="glyphicon glyphicon-user" style="padding-right: 4px";>
	  </span>Register</a></li>
	  
	 </ul>
    </div>
  </div>
</nav>




<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
	
    </ol>

	
	
     <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
	
      <div class="item active">
        <img src="Images/electronic.jpg"alt="SMART PHONES" width="440px" height="293px">
      </div>

      <div class="item">
        <img src="Images/tv.jpg"alt="TV" width="440px" height="293px">
      </div>
    
      <div class="item">
        <img src="Images/laptops.jpg"alt="LAPTOPS" width="440px" height="293px">
      </div>
	  
	   <div class="item">
        <img src="digi.jpg"alt="DIGITAL WATCHES" width="440px" height="293px">
      </div>
    
    
	  
	   <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>
<br><br>
<br><br><br>

<br>
<br>
<P><center> SMART PRODUCTS ARE AVAILABLE HERE.</center></P>
 <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>SMART PHONES</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="Images/electronic.jpg" class="img-circle person" alt="ALL" width="255" height="155">
      </a>
      <div id="demo" class="collapse">
        
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>TV</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="Images/tv.jpg" class="img-circle person" width="255" height="255">
      </a>
      <div id="demo2" class="collapse">
        
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>LAPTOPS</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="Images/laptops.jpg" class="img-circle person"  width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
       
      </div>
    </div>
    </div>
    

<footer class="container-fluid text-center">
  <p>Shopping Cart Copyright 2016.<br>All Rights Reserved.</p>
  
</footer>




</body>
</html>

