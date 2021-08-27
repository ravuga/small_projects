<%@ page import="dao.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Data</title>
</head>
<body>
	<%
String msg ="";
String url ="";
String email = request.getParameter("email");
String pass = request.getParameter("pass");
user u = new user();;
int f = u.updateUser(email,pass);
if(f==1)
{
	msg="Update Successful";
	url="adminLanding.jsp";
}
else
{
	msg= "Invalid Data Updation";
	url= "adminLanding.jsp";
}
request.getRequestDispatcher(url+"?msg="+msg).forward(request,response);
%>
</body>
</html>