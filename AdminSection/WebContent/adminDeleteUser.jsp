<%@ page import="dao.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Delete User</title>
</head>
<body>
	<%
String msg ="";
String url ="";
String email = request.getParameter("email");
user u = new user();;
int f = u.deleteUser(email);
if(f==1)
{
	msg="Delete Successful";
	url="adminLanding.jsp";
}
else
{
	msg= "Invalid Data Deletion";
	url= "adminLanding.jsp";
}
request.getRequestDispatcher(url+"?msg="+msg).forward(request,response);
%>
</body>
</html>