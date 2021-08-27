<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.admin"%>
<%@ page import=" com.mongodb.DBCollection"%>
<%@ page import="com.mongodb.DB"%>
<%@ page import="com.mongodb.DBCursor"%>
<%@ page import="connection.connection"%>
<%@ page import="com.mongodb.BasicDBObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read all Users</title>
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/navbar.css">
</head>
<style type="text/css">
table {
	margin-top: 50px;
	margin-left: 300px;
}

table, th, td {
	width: 50%;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
	border-spacing: 5px;
	background-color: #f1f1c1;
	padding: 15px;
	font-size: 20px;
}

th {
	background-color: black;
	color: white;
}
</style>
<body
	background="https://images.pexels.com/photos/850796/pexels-photo-850796.jpeg">
	<div class="topnav">
		<a href="adminReadUser.jsp">Read</a> <a href="adminCreateUser.jsp">Create</a><a
			href="updateUser.jsp">Update</a><a href="deleteUser.jsp">Delete</a> <a
			class="active" href="adminLanding.jsp">Home</a>
	</div>
		<table>
			<tr>
			<th>Username</th>
			<th>Password</th>
			</tr>
			<%
				int i = 1;
				connection c = new connection();
				DB database = c.getConnection();
				DBCollection collection = database.getCollection("contacts");
				DBCursor cursor = collection.find();
				while (cursor.hasNext()) {
			%>
			<tr>
				<%
					    BasicDBObject object_db = new BasicDBObject();
						object_db = (BasicDBObject) cursor.next();
						String dbUsername = object_db.getString("email");
						String dbPassword = object_db.getString("password");
				%>
				<td><%=dbUsername%></td>
				<td><%=dbPassword%></td>
			</tr>
			<%
				i++;
				}
			%>
		</table>
</body>
</html>