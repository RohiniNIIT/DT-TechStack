<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>

<body>
    
	<jsp:forward page="/productController?action=listproduct"></jsp:forward>
	<jsp:forward page="/supplierController?action=listsupplier"></jsp:forward>
	<jsp:forward page="/categoryController?action=listcategory"></jsp:forward>
	<jsp:forward page="/RegisterController?action=listregister"></jsp:forward>
</body>
</html> 