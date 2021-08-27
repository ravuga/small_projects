<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User</title>
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/navbar.css">
</head>
<style type="text/css">
.centerDiv {
	width: 400px;
	height: 400px;
	position: fixed;
	top: 50%;
	left: 40%;
	margin-top: -100px;
	margin-left: -100px;
}

input[type=text], [type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	padding: 15px;
	font-size: 20px;
}

input[type=submit] {
	width: 20em;
	height: 4em;
	padding: 15px;
	font-family: sans-serif;
	font-size: 20px;
}
</style>
<body
	background="https://images.pexels.com/photos/850796/pexels-photo-850796.jpeg">
	<div class="topnav">
		<a href="adminReadUser.jsp">Read</a> <a href="adminCreateUser.jsp">Create</a><a
			href="updateUser.jsp">Update</a><a href="deleteUser.jsp">Delete</a> <a
			class="active" href="adminLanding.jsp">Home</a>
	</div>
	<div class="centerDiv">
		<form action="adminDeleteUser.jsp" method="post">
			<input type="text" name="email" placeholder="Username" required>
			<input type="submit" name="signup-button" value="Delete">
		</form>
	</div>
</body>
</html>