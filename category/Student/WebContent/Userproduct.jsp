<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <!--  <title>Online Shopping</title>-->
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



<div class="well">
  <div class="container text-center">
  
     <h1><strong><b><i>SMARTDEALS</i></b></strong></h1>
    <h5>WELCOME TO ONLINE GADGETS</h5>
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
        <li><a href="User.jsp">Home</a></li>
        <li><a href="Userproduct.jsp">Products</a></li>
         <!-- <li><a href="Deals.jsp">Deals</a></li>-->
         <li><a href="Usercategory.jsp">Categories</a></li>
       <!--  <li><a href="suppliers.jsp">Suppliers</a></li>-->
        <li><a href="Userstores.jsp">Stores</a></li>
        <li><a href="Usercontact.jsp">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <!--  <li><a href="I/myaccount.jsp"><span class="glyphicon glyphicon-user">
	  </span> Your Account</a></li>
        <li><a href="I/cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>-->
    
    <li><a href="#"><span class="glyphicon welcome">
	  </span>Welcome!</a></li>
	  
	<li><a href="Userlogin.jsp"><span class="glyphicon glyphicon-log-in"style="padding-right: 4px";>
	  </span>SignIn</a></li>
	  
	 <li><a href="UserRegister.jsp"><span class="glyphicon glyphicon-user" style="padding-right: 4px";>
	  </span>Register</a></li>
	  
	 </ul>
    </div>
  </div>
</nav>






<!--

<title>Add New Product</title>
</head>
<body>
	<form action="productController.do" method="post">
		<fieldset>
			<div>
				<label for="productId">product ID</label> <input type="text"
					name="productId" value="<c:out value="${product.productId}" />"
					readonly="readonly" placeholder="Product ID" />
			</div>
			<div>
				<label for="productName">Product Name</label> <input type="text"
					name="productName" value="<c:out value="${product.productName}" />"
					readonly="readonly" placeholder="Product Name" />
			</div>
			<div>
				<label for="productPrice">Product Price</label> <input type="text"
					name="productPrice" value="<c:out value="${product.productPrice}" />"
					readonly="readonly" placeholder="Product Price" />
			</div>
			<div>
				<label for="productDescription">Product Description</label> <input type="text"
					name="productDescription" value="<c:out value="${product.productDescription}" />"
					readonly="readonly" placeholder="Product Description" />
			</div>
			<!--  <div>
				<label for="firstName">First Name</label> <input type="text"
					name="firstName" value="<c:out value="${product.firstName}" />"
					placeholder="First Name" />
			</div>
			<div>
				<label for="lastName">Last Name</label> <input type="text"
					name="lastName" value="<c:out value="${product.lastName}" />"
					placeholder="Last Name" />
			</div>
			<div>
				<label for="course">Course</label> <input type="text" name="course"
					value="<c:out value="${product.course}" />" placeholder="Course" />
			</div>
			<div>
				<label for="year">Year</label> <input type="text" name="year"
					value="<c:out value="${product.year}" />" placeholder="Year" />
			</div>
			<div>
				<input type="submit" value="Submit" />
			</div>
		</fieldset>
	</form>-->
 
<div class="container">
  <h2><strong>Products<strong></h2><br><br>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
  <a href="online1.jsp">
  
  <div class="panel-body"><img src="Images/electronic.jpg" class="img-responsive" style="width:140%" alt="Image"><br>
  </div>
    </div></div>
   <div class="col-sm-4">
      <div class="panel panel-danger">
   <div class="panel-body"><img src="Images/tv.jpg" class="img-responsive" style="width:140%" alt="Image"><br>
  </div>
    </div>
    </div>
    
   <div class="col-sm-4">
      <div class="panel panel-danger">
   <div class="panel-body"><img src="Images/laptops.jpg" class="img-responsive" style="width:80%" alt="Image"><br>
	</div>
    </div></div>
	 <div class="col-sm-4">
      <div class="panel panel-danger">
	 <div class="panel-body"><img src="Images/digi.jpg" class="img-responsive" style="width:180%" alt="Image"><br>
	  </div>
    </div></div>
	   <!--  <div class="col-sm-4">
      <div class="panel panel-danger">
	  <div class="panel-body"><img src="Images/pic27.jpg" class="img-responsive" style="width:60%" alt="Image"><br>
	  </div>
    </div></div>
	   <div class="col-sm-4">
      <div class="panel panel-danger">
	   <div class="panel-body"><img src="Images/pic28.jpg" class="img-responsive" style="width:100%" alt="Image"><br>
	    </div>
    </div></div>
	     <div class="col-sm-4">
      <div class="panel panel-danger">
	    <div class="panel-body"><img src="Images/pic29.jpg" class="img-responsive" style="width:140%" alt="Image"><br>
		 </div>
    </div></div>
		  <div class="col-sm-4">
      <div class="panel panel-danger">
		 <div class="panel-body"><img src="Images/pic30.jpg" class="img-responsive" style="width:140%" alt="Image"><br>
		 </div>
    </div></div>
		 
		  <div class="col-sm-4">
      <div class="panel panel-danger"> 
      	   <div class="panel-body"><img src="Images/pic31.jpg" class="img-responsive" style="width:140%" alt="Image"><br>
			 </div>
    </div></div>
		   </div>-->
		   
		   
		    
</div></div></div>
<footer class="container-fluid text-center">
  <p>Shopping Cart Copyright 2016.<br>All Rights Reserved.</p>
  
</footer>

</body>
</html>

