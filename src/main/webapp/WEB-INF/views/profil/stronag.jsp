<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Zuz_zaw
  Date: 19.06.2018
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@ include file="../bootstrap/config.jspf" %>
    <title>Title</title>
</head>
<body style="background: #eeeeee">
<%--<div class="row">--%>
    <%--<div class="col-sm-8" style="float: right"><h2>Let's do this!</h2></div>--%>
    <%--<div class="col-sm-4" style="float: right"><button onClick="javascript:location.href='user/logout'">Wyloguj się</button></div>--%>
<%--</div>--%>

<div class="container-fluid" >
    <div class="mx-auto" style="width: 400px;">
        <br>
        <br>
        <div>
            <img src="/Images/brunch1.jpg"/>
        </div>
    </div>
    <div style="float: right">
    <a class="btn btn-outline-info" href="/user/logout" role="button">Wyloguj się</a>
</div>
</div>

<%----%>
    <%--<br/>--%>
    <%--<h2>--%>
        <%--<div style="font: ruby"> </div>--%>
    <%--</h2>--%>
<div class="container-fluid" >
    <div class="mx-auto" style="width: 50%;">
    <a class="btn btn-outline-info" href="/main/allgroups" role="button">Wszystkie Grupy</a>
    <a class="btn btn-outline-info" href="/main/usergroups" role="button">Twoje Grupy</a>
        <a class="btn btn-outline-info" href="/main/userevents" role="button">Twoje Wydarzenia</a>
    <br/>
    <br/>
    </div>
</div>
<br>
<br>
<br>
<div class="container-fluid" >
    <div class="mx-auto" style="width: 100%;">
    <h5>Wybraliśmy dla Ciebie kilka nadchodzących wydarzeń : </h5>
    </div>
</div>

<hr class="my-4">

<div class="card-deck">
    <div class="card" style="width: 200px">
        <div class="card-body" >
            <h5 class="card-title">${event1.name}</h5>
            <p class="card-text"> Date :<c:out value="${event1.date}"/></p>
            <p class="card-text"> Time :<c:out value="${event1.time}"/></p>
            <p class="card-text"> Place :<c:out value="${event1.place}"/></p>
            <p class="card-text"> Details :<c:out value="${event1.text}"/></p>
            <p class="card-text"> Ilość osób :<c:out value="${event1Size}"/></p>
            <a href="main/allgroups/group/addevent?EventId=${event1.id}&GroupId=${event1.group.id}" class="btn btn-outline-info">Dołącz do wydarzenia</a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">${event2.name}</h5>
            <p class="card-text"> Date :<c:out value="${event2.date}"/></p>
            <p class="card-text"> Time :<c:out value="${event2.time}"/></p>
            <p class="card-text"> Place :<c:out value="${event2.place}"/></p>
            <p class="card-text"> Details :<c:out value="${event2.text}"/></p>
            <p class="card-text"> Ilość osób :<c:out value="${event2Size}"/></p>
            <a href="main/allgroups/group/addevent?EventId=${event2.id}&GroupId=${event2.group.id}" class="btn btn-outline-info">Dołącz do wydarzenia</a>
        </div>
    </div>
    <div class="card">

        <div class="card-body">
            <h5 class="card-title">${event3.name}</h5>
            <p class="card-text"> Date :<c:out value="${event3.date}"/></p>
            <p class="card-text"> Time :<c:out value="${event3.time}"/></p>
            <p class="card-text"> Place :<c:out value="${event3.place}"/></p>
            <p class="card-text"> Details :<c:out value="${event3.text}"/></p>
            <p class="card-text"> Ilość osób :<c:out value="${event3Size}"/></p>
            <a href="main/allgroups/group/addevent?EventId=${event3.id}&GroupId=${event3.group.id}" class="btn btn-outline-info">Dołącz do wydarzenia</a>
        </div>
    </div>
</div>
<br>
<br>
<br>



<%@ include file="../bootstrap/js.jspf" %>
</body>
</html>


