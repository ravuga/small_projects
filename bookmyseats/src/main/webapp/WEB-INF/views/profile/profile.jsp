<%--
  Created by IntelliJ IDEA.
  User: Gaurav.Kumar61
  Date: 10/3/2019
  Time: 2:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="profile_navbar.jsp"%>
<html>
<head>
    <title>Profile Page</title>
</head>
<style>
    body {background: #ececec;}
    h1, h2, h3, h4, h5 {
        border-bottom: 1px solid #ccc;
        color: #3F51B5;
        padding-bottom: 8px
    }
    .container {
        margin: auto;
        width: 350px;
        text-align: center;
    }
    .listFlex {display: flex; justify-content: center;}

    img {
        width: 100%;
    }
</style>
<body>
<div class="container">
    <h1>Howdy, ${username} </h1>
    <img src="https://image.shutterstock.com/z/stock-photo-new-york-ny-may-keanu-reeves-attends-the-john-wick-chapter-world-premiere-at-one-1393488839.jpg" alt="profile-picture" border="0" /></a>
</div>
</body>
</html>
