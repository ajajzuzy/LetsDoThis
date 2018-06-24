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
<br>

<c:forEach items="${usergroups}" var="groups">
        <div class="card-deck myInlineBlock" style="margin-left:auto; margin-right: auto;">
            <div class="card" style="width: fit-content">
                <div class="card-body">
                    <p class="card-text"><a class="btn btn-outline-info" href="allgroups/group?GroupId=${groups.id}"
                                            role="button" style="margin: 10px; padding: 10px"><c:out
                            value=" ${groups.name}"/></a></p>
                </div>
            </div>
        </div>
</c:forEach>

</body>
</html>
