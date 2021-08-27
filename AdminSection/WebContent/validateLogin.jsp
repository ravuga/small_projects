<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.user"%>
<%
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	user u = new user();
	int f = u.emailValidate(email, pass);
	if (f == 1) {
		//email Validated
		user u1 = new user();
		int f1 = u1.verifyPassword(email, pass);
		if (f1 == 1) {
			String s = request.getParameter("email");
			session.setAttribute("sessioncheck", s);
			System.out.print(s);
			request.getRequestDispatcher("userLanding.jsp").forward(request, response);
		} else {
%>
<p>Wrong Password</p>
<%
	}
	} else {
%>
<p>Email doesn't exists</p>
<%
	}
%>
