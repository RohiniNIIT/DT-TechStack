<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All Categories</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>category ID</th>
				<th>category Name</th>
				
				<th>category Description</th>
				
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${categories}" var="category">
				<tr>
					<td><c:out value="${category.categoryId}" /></td>
					<td><c:out value="${category.categoryName}" /></td>
					
					<td><c:out value="${category.categoryDescription}" /></td>
					
					<td><a
						href="categoryController.do?action=edit&categoryId=<c:out value="${category.categoryId }"/>">Update</a></td>
					<td><a
						href="categoryController.do?action=delete&categoryId=<c:out value="${category.categoryId }"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="categoryController.do?action=insert">Add Category</a>
	</p>
</body>
</html>