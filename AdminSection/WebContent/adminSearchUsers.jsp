<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.admin"%>
<html>

<head>
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/navbar.css">
</head>
<body
	background="https://images.pexels.com/photos/850796/pexels-photo-850796.jpeg">
	<div class="topnav">
		<a href="adminReadUser.jsp">Read</a> <a href="adminCreateUser.jsp">Create</a><a
			href="updateUser.jsp">Update</a><a href="deleteUser.jsp">Delete</a> <a
			class="active" href="adminLanding.jsp">Home</a>

	</div>
	<%
		String admin_ses = (String) session.getAttribute("adminsession");

		if (admin_ses == null) {
			String url = "adminLogin.jsp";
			String msg = "Session expired please try again!";
			request.getRequestDispatcher(url + "?msg=" + msg).forward(request, response);
		}
		String name = request.getParameter("search_name");
		admin as = new admin();
		String pass = as.searchName(name);
		if (pass == "") {
	%>
	<h1>Account Doesn't Exist.</h1>
	<%
		} else {
	%>
	<h1>
		The searched ID
		<mark><%=name%></mark>
		and Password is
		<mark><%=pass%></mark>
	</h1>
	<%
		}
	%>
</body>
</html>