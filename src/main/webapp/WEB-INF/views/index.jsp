<%--
  Created by IntelliJ IDEA.
  User: Zuz_zaw
  Date: 18.06.2018
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@    taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="bootstrap/config.jspf" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Strona główna </title>
</head>
<body class="p-3 mb-2 bg-light text-dark">
<c:choose>
    <c:when test="${empty user}">
        <div class="jumbotron ">
            <h1 class="display-4">Let's do this !</h1>
            <p class="lead">Miej hobby i podziel się nim z innymi. Organizuj wydarzenia, dołącz do istniejących, poznaj ciekawych ludzi.</p>
            <hr class="my-4">
            <p>Zaloguj się do nas, lub Zarejestruj : </p>
            <a class="btn btn-outline-info" href="user/login" role="button">Zaloguj się</a>
            <a class="btn btn-outline-info" href="user/register" role="button">Zarejestruj się</a>
        </div>

        </c:when>
        <c:otherwise>
            <div style="float: right">
                <a class="btn btn-outline-info" href="user/logout" role="button">Wyloguj się</a>
            </div>
            <h2>Witaj, <c:out value="${user.firstname}"/></h2>
        </c:otherwise>
    </c:choose>

</body>
</html>


<%--<c:choose>--%>
<%--<c:when test="${empty user}">--%>
<%--<div style="float: right">--%>
<%--<button onClick="javascript:location.href='user/login'">Logowanie</button>--%>
<%--<button onClick="javascript:location.href='user/register'" style="margin-left: 20px">Rejestracja</button>--%>
<%--</div>--%>
<%--<h2>Zaloguj się, aby skorzystać z serwisu</h2>--%>
<%--</c:when>--%>
<%--<c:otherwise>--%>
<%--<div style="float: right">--%>
<%--<button onClick="javascript:location.href='user/logout'">Wyloguj się</button>--%>
<%--</div>--%>
<%--<h2>Witaj, <c:out value="${user.firstname}" /></h2>--%>
<%--</c:otherwise>--%>
<%--</c:choose>--%>