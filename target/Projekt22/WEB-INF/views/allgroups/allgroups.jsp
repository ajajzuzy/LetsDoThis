<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Zuz_zaw
  Date: 19.06.2018
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All groups</title>
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
    <div style="float: right">
        <a class="btn btn-outline-info" href="/user/logout" role="button">Wyloguj się</a>
    </div>
</div>

<br>


<a class="btn btn-outline-info" href="/main/allgroups/add" role="button">Dodaj Grupę</a>
<br>
<br>

<%--<c:forEach items = "${groups}" var="group">--%>
<%--<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">--%>
<%--<div class="card-header">${group.name}</div>--%>
<%--<div class="card-body">--%>
<%--<h5 class="card-title"><a class="btn btn-success" href="allgroups/join?GroupId=${group.id}" role="button">Dołącz do Grupy</a></h5>--%>
<%--<h5 class="card-title"><a class="btn btn-success" href="events/add?GroupId=${group.id}" role="button">Dodaj Wydarzenie</a></h5>--%>
<%--<h5 class="card-title"><a class="btn btn-success" href="allgroups/group?GroupId=${group.id}" role="button">Pokaż wydarzenia w Grupie</a></h5>--%>
<%--</div>--%>
<%--</div>--%>


<%--<button onclick="javascript : location.href='allgroups/join?GroupId=${group.id}'">Join to group</button>--%>
<%--<button onclick="javascript : location.href='events/add?GroupId=${group.id}'">Add event</button>--%>
<%--<button onclick="javascript : location.href='allgroups/group?GroupId=${group.id}'">Show Details</button>--%>
<%--&lt;%&ndash;<button onclick="javascript : location.href='delete?authorId=${author.id}'">Delete</button>&ndash;%&gt;--%>
<%--<hr>--%>
<%--</c:forEach>--%>

<%--<c:forEach items="${groups}" var="group">--%>
<%--<div class="card-columns">--%>
<%--<div class="card text-center">--%>
<%--<div class="card-body">--%>
<%--<h5 class="card-title">${group.name}</h5>--%>
<%--<p class="card-text"><a class="btn btn-success" href="allgroups/join?GroupId=${group.id}" role="button">Dołącz--%>
<%--do Grupy</a></p>--%>
<%--<p class="card-text"><a class="btn btn-success" href="events/add?GroupId=${group.id}" role="button">Dodaj--%>
<%--Wydarzenie</a></p>--%>
<%--<p class="card-text"><a class="btn btn-success" href="allgroups/group?GroupId=${group.id}"--%>
<%--role="button">Pokaż wydarzenia w Grupie</a></p>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</c:forEach>--%>

    <c:forEach items="${groups}" var="group">
    <div class="card-deck myInlineBlock" style="float: none">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title" style="color: dimgrey">${group.name}</h5>
                <p class="card-text"><a class="btn btn-outline-info" href="allgroups/join?GroupId=${group.id}"
                                        role="button">Dołącz
                    do Grupy</a></p>
                <p class="card-text"><a class="btn btn-outline-info" href="events/add?GroupId=${group.id}"
                                        role="button">Dodaj
                    Wydarzenie</a></p>
                <p class="card-text"><a class="btn btn-outline-info" href="allgroups/group?GroupId=${group.id}"
                                        role="button">Pokaż wydarzenia w Grupie</a></p>
            </div>
        </div>
    </div>
</c:forEach>


<%--<c:forEach items="${groups}" var="group">--%>
    <%--<div class="container">--%>
        <%--<div class="row">--%>
            <%--<div class="col-sm">--%>
                <%--<h5 class="card-title">${group.name}</h5>--%>
                <%--<p class="card-text"><a class="btn btn-outline-info" href="allgroups/join?GroupId=${group.id}"--%>
                                        <%--role="button">Dołącz--%>
                    <%--do Grupy</a></p>--%>
                <%--<p class="card-text"><a class="btn btn-outline-info" href="events/add?GroupId=${group.id}"--%>
                                        <%--role="button">Dodaj--%>
                    <%--Wydarzenie</a></p>--%>
                <%--<p class="card-text"><a class="btn btn-outline-info" href="allgroups/group?GroupId=${group.id}"--%>
                                        <%--role="button">Pokaż wydarzenia w Grupie</a></p>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</c:forEach>--%>
</body>
</html>
