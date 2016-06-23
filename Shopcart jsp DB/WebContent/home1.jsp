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
  
      <h1><strong><b><i>SMARTDEALS</i></b></strong></h1>
    <h5>WELCOME TO THE ONLINE STORE</h5>
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
        <li><a href="home1.jsp">HOME</a></li>
        <li><a href="category.jsp">CATEGORIES</a></li>
       
        <li><a href="contact.jsp">CONTACT</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
     
  <li>  <a href="home1.jsp"><span class="glyphicon welcome">
	  </span>Welcome!</a></li>
	  
  	<li><a href="store.jsp"><span class="glyphicon glyphicon-log-in">
	  </span> &nbsp SignIn</a></li>
	  
	<li> <a href="Registration.jsp"><span class="glyphicon glyphicon-user">
	 </span> &nbsp Register</a></li>
	  
	 </ul>
    </div>
  </div>
</nav>

<div class="jumbotron">
  <div class="container text-center">
  
      <h1>SMART STORE</h1>
    <h4>WELCOME TO THE GADGETS</h4>
    
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
        <img src="electronic.jpg"alt="SMARTPHONES" width="400px" height="350px">
      </div>

      <div class="item">
        <img src="tv.jpg"alt="TV" width="400px" height="350px">
      </div>
    
      <div class="item">
        <img src="laptops.jpg"alt="LAPTOPS" width="400px" height="350px">
      </div>
	  
	   <div class="item">
        <img src="digi.jpg"alt="DIGITAL WATCHES" width="400px" height="350px">
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
    
 		  
<div id="band" class="container text-center">
 
  <p><em>Products Satisfication Guaranteed</em></p>
  <p>A Simple click to get all the Products</p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>SMART PHONES</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="electronic.jpg" class="img-circle person" width="255" height="255">
      </a>
      <div id="demo" class="collapse">
        
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>TV</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="tv.jpg" class="img-circle person" width="255" height="255">
      </a>
      <div id="demo2" class="collapse">
        
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>LAPTOPS</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="laptops.jpg" class="img-circle person" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
       
      </div>
    </div>
	 <div class="col-sm-4">
      <p class="text-center"><strong>DIGITAL WATCHES</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="digi.jpg" class="img-circle person" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
       
      </div>
    </div>
  </div>
</div>


    
    </div>
  </div>
 <!--   <li> <a href="signout.html"><span class="glyphicon glyphicon-user">
	 </span> &nbsp signout</a></li>-->


<footer class="container-fluid text-center">
  <p>Shopping Cart Copyright 2016.<br>All Rights Reserved.</p>
  
</footer>





</body>
</html>

