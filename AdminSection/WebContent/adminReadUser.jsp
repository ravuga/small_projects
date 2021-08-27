<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read User</title>
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/navbar.css">
</head>
<style type="text/css">
.center {
	width: 800px;
	height: 600px;
	position: fixed;
	top: 50%;
	left: 40%;
	margin-top: -150px;
	margin-left: -100px;
	font-size: 20px;
}

input[type=submit] {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

input[type=text] {
	width: 40%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
}
</style>
<body
	background="https://images.pexels.com/photos/850796/pexels-photo-850796.jpeg">
	<%
		String admin_ses = (String) session.getAttribute("adminsession");

		if (admin_ses == null) {
			String url = "adminLogin.jsp";
			String msg = "Session expired please try again!";
			request.getRequestDispatcher(url + "?msg=" + msg).forward(request, response);
		}
	%>
	<div class="topnav">
		<a href="adminReadUser.jsp">Read</a> <a href="adminCreateUser.jsp">Create</a><a
			href="updateUser.jsp">Update</a><a href="deleteUser.jsp">Delete</a> <a
			class="active" href="adminLanding.jsp">Home</a>

	</div>
	<div class="center">
		<form action="adminReadAllUsers.jsp">
			<h2>Read all existing users</h2>
			<input type="submit" value="Read">
		</form>
		<br>
		<form action="adminSearchUsers.jsp">
			<h2>Read users by search</h2>
			<input type="text" name="search_name"> <input type="submit"
				value="Read" required>
		</form>
	</div>
</body>
</html>