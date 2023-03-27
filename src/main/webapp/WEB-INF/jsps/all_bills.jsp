<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
	<a href="ecity" class="btn btn-success"role="button">New</a>
	<div class="container">
		<header class="text-center">
			<h2>List Of Electricity Bills</h2>
		</header></div>
	<form action="listall">
		<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<td class="bg-primary">SNo</td>
					<td class="bg-primary">Name</td>
					<td class="bg-primary">Units</td>
					<td class="bg-primary">Amount</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bills" items="${bills}">
					<tr>
						<th>${bills.id}</th>
						<th>${bills.customerName}</th>
						<th>${bills.noOfUnits}</th>
						<th>${bills.amount}</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</form>
</body>
</html>