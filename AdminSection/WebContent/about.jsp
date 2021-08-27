<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.aboutus {
	font-family: "Times New Roman", Times, serif;
	font-style: normal;
	font-weight: normal;
	font-size: large
}
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="/AdminSection/css/navbar.css">
<title>About Us</title>
</head>
<body
	background="https://images.pexels.com/photos/850796/pexels-photo-850796.jpeg">
	<%
		String ses = (String) session.getAttribute("sessioncheck");
		if (ses == null) {
			String url = "userLogin.jsp";
			String msg = "Session expired please try again!";
			request.getRequestDispatcher(url + "?msg=" + msg).forward(request, response);
		}
	%>
	<div class="topnav">
		<a href="about.jsp">About</a> <a class="active" href="userLanding.jsp">Home</a>

	</div>
	<h1>About US</h1>
	<hr>
	<pre class="aboutus">We know -- no industry jargon. If you think it makes you sound
		super smart on your "About Us" page, think again. People want and
		appreciate straight talk about what your business does. After all, if
		people can't figure out what you do, how will they know they need your
		product or service? So, skip the industry lingo -- that's what
		ABC does on its "About Us" page. The startup's simple but
		polished language effectively communicates the company's offering
		while still allowing the Average Joe to understand it.</pre>
</body>
</html>