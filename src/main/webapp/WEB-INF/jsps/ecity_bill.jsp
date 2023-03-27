<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electricity Bill</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
<a href="listall" class="btn btn-success"role="button">All Bills</a>
	<div class="container">
		<header class="text-center">
			<h1>Bill Details</h1>
		</header>
		<form action="bill" method="post">
		<div class="container">
			<div class="form-group">CustomerName : <input type="text" 
			class="form-control" name="customerName" value="${name}"></div>
			<div class="form-group">No Of Units : <input type="text" 
			class="form-control" name="noOfUnits" value="${units}"></div>
			<div class="form-group">Amount : <input type="text" 
			class="form-control" name="amount" value="${amount}"></div>
			<button type="submit" class="btn btn-primary">Save Bill</button>
		</div>
		</form>
	</div>
</body>
</html>