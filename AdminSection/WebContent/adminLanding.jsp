<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin DAshBoard</title>
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/navbar.css">
</head>
<body
	background="https://images.pexels.com/photos/850796/pexels-photo-850796.jpeg">
	<%
		response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma", "no-cache");
		String admin_ses = (String) session.getAttribute("adminsession");

		if (admin_ses == null) {
			String url = "adminLogin.jsp";
			String msg = "Session expired please try again!";
			request.getRequestDispatcher(url + "?msg=" + msg).forward(request, response);
		}
	%>
	<div class="topnav">
		<a href="adminReadUser.jsp">Read</a> <a href="adminCreateUser.jsp">Create</a>
		<a href="updateUser.jsp">Update</a> <a href="deleteUser.jsp">Delete</a>
		<a class="active" href="adminLanding.jsp">Home</a>

	</div>
	<h1 align="center">
		Hello
		<%=admin_ses%>
		!!!
	</h1>
	<br>
	<div align="right">
		<button style="font-size: 25px"
			onclick="window.location.href = 'logout.jsp';">Logout</button>
		.
	</div>
</body>
</html>