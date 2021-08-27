<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!Doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Admin Login Page</title>
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/style.css">

</head>
<style type="text/css">
.message {
	text-align: center;
	color: red;
	font-family: "Times New Roman", Times, serif;
}
</style>
<body>
	<form action="validateAdminLogin.jsp" method="post">
		<div class="login-box">
			<h1>Admin Login</h1>
			<div class="textbox">
				<i class="fa fa-user" aria-hidden="true"></i> <input type="text"
					placeholder="Username" name="email" value="">
			</div>

			<div class="textbox">
				<i class="fa fa-lock" aria-hidden="true"></i> <input type="password"
					placeholder="Password" name="password" value="">
			</div>

			<button class="btn" type="submit">Submit</button>
		</div>
	</form>
	<%
		String color = "";
		String msg = null != request.getParameter("msg") ? request.getParameter("msg") : "";
		if (msg.equalsIgnoreCase("Session Invalid.")) {
			color = "white";
		}
		if (msg.equalsIgnoreCase("Wrong Credential!!")) {
			color = "white";
		}
	%>
	<div class="message">
		<br>
		<br><%=msg%></div>
</body>
</html>