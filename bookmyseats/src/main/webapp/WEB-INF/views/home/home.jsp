<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gaurav.Kumar61
  Date: 10/1/2019
  Time: 5:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
</head>
<style>
    .buttonGroup{
        text-align: center;
        margin-top: 150px;
    }
    input[type=submit]{
        padding: 15px;
        font-size: 25px;
        border-style: dot-dot-dash;
    }
</style>
<body style="background-color: cornsilk">
<br>
<h1>Welcome To BookMySeats</h1>

<h3 style="text-align: center; color: darkgreen">${errorMessage}</h3>
<h1 style="text-align: center; color: red">${lmessage}</h1>
<div class="buttonGroup">
<form action="<c:url value="/mSignUpView"/>" method="post">
    <input type="submit" value="Sign Up Using Mobile">
</form>

<form action="<c:url value="/eSignUpView"/>" method="post">
    <input type="submit" value="Sign Up Using Email">
</form>

<form action="<c:url value="/loginView"/>" method="post">
    <input type="submit" value="Already A Member ? Sign In .">
</form>
</div>


</body>
</html>
