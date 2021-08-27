<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.user"%>
<%
	String msg = "";
	String url = "";
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	String pass2 = request.getParameter("password2");
	user u = new user();
	int f = u.saveEmployee(email, pass, pass2);
	if (f == 1) {
		msg = "SignUP Successful";
		url = "adminLanding.jsp";
		System.out.println(1);

	} else if (f == -1) {
		msg = "Password Entered Are Not Same";
		url = "signup.jsp";
		System.out.println(2);
	} else if (f == 0) {
		msg = "User already exists!!!";
		url = "signup.jsp";
		System.out.println(3);

	}
	request.getRequestDispatcher(url + "?msg=" + msg).forward(request, response);
%>