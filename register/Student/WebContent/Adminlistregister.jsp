<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
    <h5>WELCOME TO ONLINE GADGETS</h5>  </div>
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
        <!-- <li><a href="Deals.jsp">Deals</a></li>-->
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


<body>
	<table class=table table-bordered">
	
<caption>	<h2>Register Details</h2></caption>
		<thead>
			<tr>
				<th>Register ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>DOB</th>
				<th>Gender</th>
				<th>RequestAccess</th>
				
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${registers}" var="register">
				<tr>
					<td><c:out value="${register.registerId}" /></td>
					<td><c:out value="${register.firstName}" /></td>
					<td><c:out value="${register.lastName}" /></td>
					<td><c:out value="${register.email}" /></td>
					<td><c:out value="${register.dob}" /></td>
					<td><c:out value="${register.gender}" /></td>
					<td><c:out value="${register.requestAccess}" /></td>
					<td><a
						
						href="RegisterController.do?action=edit&registerId=<c:out value="${register.registerId }"/>">
						<input type="submit" class="btn btn-success"value="Update"/></a></td>
					<td><a
						href="RegisterController.do?action=delete&registerId=<c:out value="${register.registerId }"/>">
						<input type="submit" class="btn btn-danger"value="Delete"/></a></td>
				</tr>
			</c:forEach>
		</tbody>
	
	</table>
	<p>
		<a href="RegisterController.do?action=insert">Add Register</a>
	</p>

  </body>
  <br><br>
  

<footer class="container-fluid text-center">
    <p>Shopping Cart Copyright 2016.<br>All Rights Reserved.</p>
  
</footer>





</body>
</html>