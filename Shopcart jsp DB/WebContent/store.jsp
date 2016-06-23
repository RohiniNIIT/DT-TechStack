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
	  </span> &nbsp Welcome! </a> </li>
	  
	<li><a href="store.jsp"><span class="glyphicon glyphicon-log-in">
	  </span> &nbsp SignIn</a></li>
	  
	<li> <a href="Registration.jsp"><span class="glyphicon glyphicon-user">
	 </span> &nbsp Register</a></li>
	  
	 </ul>
    </div>
  </div>
</nav>

<form action ="LoginServlet" method="post">
<h3>Login</h3>
User name:<br>
<input type="text" name="userid">
<br>
User password:<br>
<input type="password" name="password"><br><br>
<input type="submit" class="btn btn-info" value="Submit">
<input type="reset" class="btn btn-info" value="Reset">
</form>

<br>

<form action="Congrats.jsp">
<a href="Registration.jsp">Click here to Register</a> 
</form>

<!--  <div class="container text-center">
  <div class="row">
    <div class="col-sm-4">
      <h3>MOBILES</h3>
	  <a href="http://www.metedeconk.org/club/scripts/library/view_document.asp?GRP=17193&NS=GI&APP=80&DN=EDP">
	  <img src="electronic.jpg"  style="width:150px;height:150px"></a>
	  
      </div>
    </div>
	

    <div class="col-sm-4">
      <h3>TV</h3>
	  <a href="http://www.amazon.in/TV-buying-guide/b?ie=UTF8&node=5122596031">
	  <img src="tv.jpg"  style="width:150px;height:150px"></a>
	  </div>
      
    
    
    <div class="col-sm-4">
      <h3>LAPTOPS</h3>
	  <a href="http://www.mascomelectronics.com/laptops.php#.V2EAwPl97IU">
	  <img src="laptops.jpg"  style="width:150px;height:150px"></a>
	  
    </div>  
    </div>-->
   
<footer class="container-fluid text-center">
  <p>Shopping Cart Copyright 2016.<br>All Rights Reserved.</p>
  
</footer>




</body>
</html>

   
</body>
</html>