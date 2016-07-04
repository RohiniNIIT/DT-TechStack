<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  
<title>Add New Product</title>
</head>
<body>
	<form action="ProductController.do" method="post">
		<fieldset>
			<div>
				<label for="productId">Product ID</label> <input type="text"
					name="productId" value="<c:out value="${product.productId}" />"
					readonly="readonly" placeholder="Product ID" />
			</div>
			<div>
				<label for="productName">Product Name</label> <input type="text"
					name="productName" value="<c:out value="${product.productName}" />"
					 placeholder="Product Name" />
			</div>
			<div>
				<label for="productPrice">Product Price</label> <input type="text"
					name="productPrice" value="<c:out value="${product.productPrice}" />"
					 placeholder="Product Price" />
			</div>
			<div>
				<label for="productDescription">Product Description</label> <input type="text"
					name="productDescription" value="<c:out value="${product.productDescription}" />"
					 placeholder="Product Description" />
			</div>
			
			<div>
				<input type="submit" value="Submit" />
			</div>
		</fieldset>
	</form>
<!--  
<div class="container">
  <h2><strong>Products<strong></h2><br><br>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
  <a href="online.jsp">
  
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

