<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
     <!--    <li><a href="supplier.jsp">Suppliers</a></li>-->
        <li><a href="Userstores.jsp">Stores</a></li>
        <li><a href="Usercontact.jsp">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <!--  <li><a href="I/myaccount.jsp"><span class="glyphicon glyphicon-user">
	  </span> Your Account</a></li>
        <li><a href="I/cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>-->
    
    <li><a href="#"><span class="glyphicon welcome">
	  </span>Welcome!</a></li>
	   
	  <li><a href="User.jsp"><span class="glyphicon glyphicon-log-in"style="padding-right: 4px";>
	  </span>Manage Profiles</a></li>
	  
	<li><a href="Userlogin.jsp"><span class="glyphicon glyphicon-log-in"style="padding-right: 4px";>
	  </span>SignIn</a></li>
	  
	<!--   <li><a href="UserRegister.jsp"><span class="glyphicon glyphicon-user" style="padding-right: 4px";>
	  </span>Register</a></li>-->
	  
	 </ul>
    </div>
  </div>
</nav>

<body>
	<jsp:forward page="/User1Controller?action=UserlistUser1"></jsp:forward>

		<div class="container">
        <table class="table table-bordered">
        
            <caption><h2>User Details</h2></caption>
            <tr>
	
		<thead>
			<tr>
			
				<th>User ID</th>
				<th>User Name</th>
			<!--  	<th>Password</th>-->
								
				
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${user1s}" var="user1">
				<tr>
					<td><c:out value="${user1.userId}" /></td>
					<td><c:out value="${user1.userName}" /></td>
					<!-- <td><c:out value="${user1.password}" /></td> -->
										
										
					<td><a
						href="User1Controller.do?action=edit&userId=<c:out value="${user.userId }"/>">
						<input type="submit" class="btn btn-info" value="Update" /></a></td>
						
					<td><a
						href="User1Controller.do?action=delete&userId=<c:out value="${user.userId }"/>">
						<input type="submit" class="btn btn-info" value="Delete" /></a></td>
						
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<p>
		<a href="User1Controller.do?action=insert">
		<input type="submit" class="btn btn-info" value="Add User" /></a>
		
	</p></div>

  </body>
  <br><br>
  
  
<footer class="container-fluid text-center">
    <p>Shopping Cart Copyright 2016.<br>All Rights Reserved.</p>
  
</footer>





</body>
</html>
