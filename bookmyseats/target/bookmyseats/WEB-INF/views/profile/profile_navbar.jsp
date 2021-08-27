<%--
  Created by IntelliJ IDEA.
  User: Gaurav.Kumar61
  Date: 10/3/2019
  Time: 2:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<style>
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #333;
        width: 583px;
        text-align: center;
        align-content: center;
    }

    li {
        float:left;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a:hover {
        background-color:coral;
    }
</style>
<body>
<ul>
    <li><a href="<c:url value="/profile"/>">Profile</a></li>
    <li><a href="<c:url value="/event"/>">Events</a></li>
    <li><a href="<c:url value="/cart"/>">Cart</a></li>
    <li><a href="<c:url value="#"/>">Check Out</a></li>
    <li><a href="<c:url value="/logout"/>">Logout</a></li>
</ul>
</body>
</html>
