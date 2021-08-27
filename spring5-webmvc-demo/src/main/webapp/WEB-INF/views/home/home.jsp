<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/home/navbar.jsp" %>
<html>
<head><title>Admin Section</title></head>
<style>
    .message{
        font-family: "Century Schoolbook";
        font-size: 50px;
        color: darkgreen;
        text-align: center;
    }
</style>
<body style="background-color: bisque">
<div class="message">
<br>
Welcome to Generic Administrator Section.
<br>You Can perform CRUD ( Create , Read , Update <br>, Delete ) operations.
    <br><a href="<c:url value="/crud/checkDB"/>">Check Connection</a>
    <br>${message}
</div>
</body>
</html>
