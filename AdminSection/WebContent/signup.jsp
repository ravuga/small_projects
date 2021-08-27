<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!Doctype html>
<html>
<head>
<title>New User Form</title>
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/style.css">
</head>
<style type="text/css">
.centerDiv {
	width: 400px;
	height: 400px;
	position: fixed;
	top: 35%;
	left: 40%;
	margin-top: -100px;
	margin-left: -100px;
	text-align: center;
}

input[type=text], [type=password] {
	width: 100%;
	padding: 10px 10px;
	margin: 8px 0;
	box-sizing: border-box;
	padding: 15px;
	font-size: 20px;
}

input[type=submit] {
	padding: 15px;
	font-size: 20px;
	width: 20em;
	height: 3em;
}
</style>
<body>
	<div class="centerDiv">
		<form action="registerUser.jsp" method="post">
			<div id="login-box">
				<div class="left-box">
					<h1 style="color: white">Create New User</h1>
					<input type="text" name="email" placeholder="Username" required>
					<input type="password" name="password" placeholder="Password "
						required> <input type="password" name="password2"
						placeholder="Retype Password " required> <input
						type="submit" name="signup-button" value="Create">
				</div>
				<div class="right-box"></div>
			</div>
		</form>
		<%
			String color = "";
			String msg = null != request.getParameter("msg") ? request.getParameter("msg") : "";
			if (msg.equalsIgnoreCase("Entered password are not same")) {
				color = "red";
			}
		%>
	</div>

	<br>
	<div style="text-align: center; color: <%=color%>"><%=msg%></div>

</body>

</html>
