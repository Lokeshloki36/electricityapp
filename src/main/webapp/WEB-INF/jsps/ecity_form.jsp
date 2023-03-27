<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electricity Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
<a href="listall" class="btn btn-success"role="button">All Bills</a>
	<div class="container">
		<header class="text-center">
			<h1>Electricity Form</h1>
		</header>
		<form action="amount" method="post">
		<div class="container">
			<div class="form-group">CustomerName : <input type="text" 
			class="form-control" name="customerName"></div>
			<div class="form-group">No Of Units : <input type="text" 
			class="form-control" name="noOfUnits"></div>
			<button type="submit" class="btn btn-primary">Generate Bill</button>
		</div>
		</form>
	</div>
</body>
</html>