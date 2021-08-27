<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.admin"%>
<%
	String msg = "";
	String url = "";
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	admin ad = new admin();
	;
	int f = ad.validateAdminEmail(email, pass);
	if (f == 1) {
		url = "adminLanding.jsp";
		String s = request.getParameter("email");
		session.setAttribute("adminsession", s);
	} else {
		msg = "Wrong Credential";
		url = "adminLogin.jsp";

	}

	request.getRequestDispatcher(url + "?msg=" + msg).forward(request, response);
%>