<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Persons Manage Page</title>
<style type="text/css">
table, th, td {
	border: 5px solid black;
}

.centerDiv {
	width: 400px;
	height: 400px;
	position: fixed;
	top: 35%;
	left: 40%;
	margin-top: -100px;
	margin-left: -100px;
	text-align: center;
	background-image:url("https://images.pexels.com/photos/316466/pexels-photo-316466.jpeg");
}

input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
}

.tableCss {
	font-size: 18px;
}
</style>
</head>
<body class="centerDiv">

	<%-- Person Add/Edit logic --%>
	<c:url value="/addPerson" var="addURL" />
	<c:url value="/editPerson" var="editURL" />

	<%-- Edit Request --%>
	<c:if test="${requestScope.person ne null}">
		<form action='<c:out value="${editURL}"></c:out>' method="post">
			<label for="fname"
				style="font-size: 25px; text-align: left; float: left;"> ID:
			</label><input type="text" value="${requestScope.person.id}"
				readonly="readonly" name="id"><br> <label for="fname"
				style="font-size: 25px; text-align: left; float: left;">Name:
			</label> <input type="text" value="${requestScope.person.name}" name="name"><br>
			<label for="fname"
				style="font-size: 25px; text-align: left; float: left;">
				Country: </label><input type="text" value="${requestScope.person.country}"
				name="country"><br> <input
				style="font-size: 25px; padding: 12px 20px;" type="submit"
				value="Edit Person">
		</form>
	</c:if>

	<%-- Add Request --%>
	<c:if test="${requestScope.person eq null}">
		<form action='<c:out value="${addURL}"></c:out>' method="post">
			<label for="fname"
				style="font-size: 25px; text-align: left; float: left;">Name:
			</label> <input type="text" name="name"><br> <label for="fname"
				style="font-size: 25px; text-align: left; float: left;">
				Country: </label> <input type="text" name="country"><br> <input
				style="font-size: 25px; padding: 12px 20px;" type="submit"
				value="Add Person">
		</form>
	</c:if>

	<%-- Persons List Logic --%>
	<br>
	<div class="tableCss">
		<c:if test="${not empty requestScope.persons}">
			<table cellpadding="8"
				style="border-collapse: collapse; padding: 15px; text-align: center;">
				<tbody>
					<tr>
						<th>Name</th>
						<th>Country</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<c:forEach items="${requestScope.persons}" var="person">
						<c:url value="/editPerson" var="editURL">
							<c:param name="id" value="${person.id}" />
						</c:url>
						<c:url value="/deletePerson" var="deleteURL">
							<c:param name="id" value="${person.id}" />
						</c:url>
						<tr>
							<td><c:out value="${person.name}" /></td>
							<td><c:out value="${person.country}" /></td>
							<td><a
								href='<c:out value="${editURL}" escapeXml="true"></c:out>'>Edit</a></td>
							<td><a
								href='<c:out value="${deleteURL}" escapeXml="true"></c:out>'>Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</div>
</body>
</html>