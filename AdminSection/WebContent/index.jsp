<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Web Application</title>
<head>
<style type="text/css">
body {
	background-size: cover;
	margin-top: 20%;
	background:
		url("https://images.pexels.com/photos/1020320/pexels-photo-1020320.jpeg");
	text-align: center;
}

h1 {
	font-family: sans-serif;
	font-weight: bold;
	color: #000;
}

button {
	background-color: #ff9933;
	border-radius: 25px;
	border: 2px solid #73AD21;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

.message {text-align ="center" style= width:200px;
	background: #ffff;
	border: 1px;
}
</style>

</head>
<body>
	<h1>Welcome to ABC</h1>

	<button style="font-size: 25px"
		onclick="location.href ='userLogin.jsp';" class="btn">User
		Login</button>
	<br>
	<br>
	<button style="font-size: 25px"
		onclick="location.href ='adminLogin.jsp';" class="btn">Admin
		Login</button>
	<%
		String color = "";
		String msg = null != request.getParameter("msg") ? request.getParameter("msg") : "";

		if (msg.equalsIgnoreCase("Logged out successfully")) {
			color = "red";
		}
	%>
	<br>
	<br>
	<br>
	<span class="message" style="color: <%=color%>"><%=msg%></span>
</body>
</html>