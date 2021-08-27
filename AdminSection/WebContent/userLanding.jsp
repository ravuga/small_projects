<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
</style>
<meta charset="ISO-8859-1">
<title>Welcome!!!!!!</title>
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
		String ses = (String) session.getAttribute("sessioncheck");
		System.out.print("in userLanding session =" + ses);
		if (ses == null) {
			String url = "userLogin.jsp";
			String msg = "Session expired. Please try Again!";
			request.getRequestDispatcher(url + "?msg=" + msg).forward(request, response);
		}
	%>

	<div class="topnav">
		<a href="about.jsp">About</a><a class="active" href="userLanding.jsp">Home</a>

	</div>
	<h1>
		Hello
		<%=ses%>
		!!!
	</h1>

	<br>
	<div align="right">
		<button style="font-size: 20px"
			onclick="window.location.href = 'logout.jsp';">Logout</button>
		.
	</div>
</body>
</html>