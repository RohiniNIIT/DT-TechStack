<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>

<body>
	<jsp:forward page="/StudentController?action=listStudent"></jsp:forward>
	<jsp:forward page="/User1Controller?action=UserlistUser1"></jsp:forward>
	<jsp:forward page="/ProductController?action=AdminlistProduct"></jsp:forward>
	<jsp:forward page="/CategoryController?action=Adminlistcategory"></jsp:forward>
	<jsp:forward page="/SupplierController?action=Adminlistsupplier"></jsp:forward>
		<jsp:forward page="/RegisterController?action=Adminlistregister"></jsp:forward>
	
</body>
</html> 