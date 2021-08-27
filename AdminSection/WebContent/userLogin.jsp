<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!Doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Login Page</title>
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/style.css">
</head>
<body>
	<form action="validateLogin.jsp" method="post">
		<div class="login-box">
			<h1>User Login</h1>
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
		if (msg.equalsIgnoreCase("SignUp Successful. Login to Continue...")) {
			color = "green";
		}
		if (msg.equalsIgnoreCase("User already Exists!!!")) {
			color = "red";
		}
		if (msg.equalsIgnoreCase("Session expired. Please Try Again!")) {
			color = "red";
		}
	%>
	<br>
	<div style="text-align: center; color: <%=color%>"><%=msg%></div>
</body>
</html>