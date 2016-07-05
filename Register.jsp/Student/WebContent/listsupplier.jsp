<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All Suppliers</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Supplier ID</th>
				<th>Supplier Name</th>
				
				<th>Supplier Description</th>
				<th>Supplier Address</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${suppliers}" var="supplier">
				<tr>
					<td><c:out value="${supplier.supplierId}" /></td>
					<td><c:out value="${supplier.supplierName}" /></td>
					
					<td><c:out value="${supplier.supplierDescription}" /></td>
					<td><c:out value="${supplier.supplierAddress}" /></td>
					
					<td><a
						href="supplierController.do?action=edit&supplierId=<c:out value="${supplier.supplierId }"/>">Update</a></td>
					<td><a
						href="supplierController.do?action=delete&supplierId=<c:out value="${supplier.supplierId }"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="supplierController.do?action=insert">Add Supplier</a>
	</p>
</body>
</html>