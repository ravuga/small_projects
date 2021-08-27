<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	session.invalidate();
	String msg = "Logged Out Successful";
	String url = "index.jsp";
	request.getRequestDispatcher(url + "?msg=" + msg).forward(request, response);
%>