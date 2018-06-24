<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Zuz_zaw
  Date: 20.06.2018
  Time: 09:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="../bootstrap/config.jspf" %>
    <style>
        .myInlineBlock {
            display: inline-block;
        }
    </style>
</head>
<body style="background: #eeeeee">
<div class="container-fluid">
    <div class="mx-auto" style="width: 400px;">
        <br>
        <br>
        <div>
            <img src="/Images/brunch1.jpg"/>
        </div>
    </div>
</div>

<br>
<br>


<c:forEach items="${eventsofgroup}" var="event">

    <div class="card-deck myInlineBlock" style="float: none">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title" style="color: dimgrey">${event.name}</h5>
                <p class="card-text">Data Wydarzenia :<c:out value=" ${event.date}"/></p>
                <p class="card-text">Godzina Wydarzenia :<c:out value=" ${event.time}"/></p>
                <p class="card-text">Miejsce Wydarzenia :<c:out value=" ${event.place}"/></p>
                <p class="card-text">Opis Wydarzenia :<c:out value=" ${event.text}"/></p>
                <a href="group/addevent?EventId=${event.id}&GroupId=${event.group.id}" class="btn btn-outline-info">Dołącz do wydarzenia</a>
            </div>
        </div>
    </div>
</c:forEach>

</body>
</html>
