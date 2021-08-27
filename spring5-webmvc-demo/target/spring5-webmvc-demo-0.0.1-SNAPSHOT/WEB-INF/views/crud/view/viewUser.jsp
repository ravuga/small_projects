<%--
  Created by IntelliJ IDEA.
  User: Gaurav.Kumar61
  Date: 9/26/2019
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/home/navbar.jsp" %>
<html>
<head>
    <title>View User</title>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body style="background-color: burlywood">
    <div class="w3-container">
        <br><br>
        <table class="w3-table w3-striped w3-bordered">
            <tr>
                <th>UserName</th>
                <th>Password</th>
            </tr>
            <c:forEach items="${userList}" var="entry">
            <tr>
                <td>${entry.key}</td>
                <td>${entry.value}</td>
            </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
