<%--
  Created by IntelliJ IDEA.
  User: Gaurav.Kumar61
  Date: 10/1/2019
  Time: 6:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>SignUp</title>
</head>
<style>
    .message{
        text-align: center;
        font-family:"sans-serif";
        font-size: xx-large;
        color: Red;
        margin-top: 80px
    }
    input[type=email], select {
        width: 50%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type=password], select{
        width: 50%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type=submit] {
        width: 50%;
        background-color: chocolate;
        color: white;
        padding: 15px 20px;
        margin-top: 21px;
        margin-left: 81px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: lightskyblue;
    }

    div {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
        width: 442px;
        text-align: center;
        margin-left: 400px;
        margin-top: 100px;
    }
</style>
<body style="background-color: burlywood">
<form action="<c:url value="/eSignUp"></c:url>" method="post">
    <label for="username" style="font-family: 'Bookman Old Style'">UserName </label>
    <input type="email" id="username" name="username" placeholder="Username " required>
    <br>
    <label for="password" style="font-family: 'Bookman Old Style'">Password</label>
    <input type="password" id="password" name="password" placeholder="Your password.." required>
    <input type="submit" value="Submit">
</form>
</body>
</html>
