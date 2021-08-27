<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gaurav.Kumar61
  Date: 10/3/2019
  Time: 2:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="event_navbar.jsp"%>
<html>
<head>
    <title>Event Page</title>
</head>
<style>
    * {
        box-sizing: border-box;
    }

    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    /* Float four columns side by side */
    .column {
        float: left;
        width: 25%;
        padding: 0 10px;
    }

    /* Remove extra left and right margins, due to padding */
    .row {margin: 0 -5px;}

    /* Clear floats after the columns */
    .row:after {
        content: "";
        display: table;
        clear: both;
    }

    /* Responsive columns */
    @media screen and (max-width: 600px) {
        .column {
            width: 100%;
            display: block;
            margin-bottom: 20px;
        }
    }

    /* Style the counter cards */
    .card {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        padding: 16px;
        text-align: center;
        background-color: #f1f1f1;
    }
</style>
<body>
<br><br><br><br><br><br><br><br>
<div class="row">
    <div class="column">
        <div class="card">
            <h3><a href="<c:url value="/event/concert"/>">Concert</a></h3>
            <p>A concert is a live music performance in front of an audience. The performance may be by a single musician, sometimes then called a recital, or by a musical ensemble, such as an orchestra, choir, or band</p>
        </div>
    </div>
    <div class="column">
        <div class="card">
            <h3><a href="<c:url value="/event/movie"/>">Movie</a></h3>
            <p>A recording of moving images that tells a story</p>
        </div>
    </div>
    <div class="column">
        <div class="card">
            <h3><a href="<c:url value="/event/party"/>">Party</a></h3>
            <p>A party is a gathering of people who have been invited by a host for the purposes of socializing, conversation, recreation, or as part of a festival or other commemoration of a special occasion. A party will typically feature food and beverages, and often music and dancing or other forms of entertainment.
            </p>
        </div>
    </div>
    <div class="column">
        <div class="card">
            <h3><a href="<c:url value="/event/show"/>">Shows</a></h3>
            <p>Watch your Comic Star, Poet or Writer in Reality.</p>
        </div>
    </div>
</div>

</body>
</html>
