<%--
  Created by IntelliJ IDEA.
  User: Gaurav.Kumar61
  Date: 9/26/2019
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/home/navbar.jsp" %>
<html>
<head>
    <style>
        .imageAdmin{
            float: left;
            margin-left: 100px;
            margin-top: 100px;
        }
        .detailAdmin{
            margin-right: 100px;
            float: right;
        }
    </style>
</head>
<body style="background-color: burlywood;">

<h2 style="text-align:center">Admin Profile Card</h2>
<div class="imageAdmin">
<img src="https://image.shutterstock.com/image-photo/new-york-ny-may-9-600w-1393488839.jpg" height="300" width="250">
</div>
<div class ="detailAdmin">
  <h1>Hello Admin. Good To See You.</h1><br>
    <h1>Name : John Wick</h1><br>
    <h1> Status : Administrator</h1><br>
    <h1>Operations : CRUD</h1><br>

</div>
</body>
</html>