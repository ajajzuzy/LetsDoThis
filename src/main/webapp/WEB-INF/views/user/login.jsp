<%--
  Created by IntelliJ IDEA.
  User: Zuz_zaw
  Date: 18.06.2018
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@    taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Logowanie</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
    <%@ include file="../bootstrap/config.jspf" %>
</head>
<body style="background-color: #eee">
<div class="w-50 p-3" style="float: left">
    <div class="mx-auto" style="width: 200px; height: 1000px">
        <br/>
        <br/>
        <h2>Zaloguj się : </h2><br/>
        <c:if test="${not empty loginError}">
            <div class="error">
                <c:out value="${loginError }"/>
            </div>
        </c:if>

        <div class="d-inline-flex p-2 bd-highlight center-aligned">

            <form:form modelAttribute="user" method="POST">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <form:input path="email" type="email" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp" placeholder="Enter email"/>
                    <small id="emailHelp" class="form-text text-muted"><form:errors path="email"/></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <form:password path="password" class="form-control" id="exampleInputPassword1"
                                   placeholder="Password"/>
                    <small id="emailHelp" class="form-text text-muted"><form:errors path="password"/></small>
                </div>
                <%--<div class="form-group form-check">--%>
                <%--<input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
                <%--<label class="form-check-label" for="exampleCheck1">Check me out</label>--%>
                <%--</div>--%>
                <button type="submit" class="btn btn-outline-info">Zaloguj się</button>
            </form:form>
        </div>
    </div>
</div>

<div class="w-50 p-3" style="float: right">
    <div class="mx-auto" style="width: 200px; height: 1000px">
        <br />
        <br />
        <h4> Nie masz konta ? Zarejestruj się : </h4>
        <div>
            <br />
            <button onClick="javascript:location.href='register'" class="btn btn-outline-info">Rejestracja</button>
        </div>
    </div>
</div>


<%--<div style="float: right">--%>
<%--<button onClick="javascript:location.href='register'" style="margin-left: 20px">Rejestracja</button>--%>
<%--</div>--%>
<%--<h2>Logowanie</h2>--%>
<%--<c:if test="${not empty loginError}">--%>
<%--<div class="error">--%>
<%--<c:out value="${loginError }" />--%>
<%--</div>--%>
<%--</c:if>--%>
<%--<form:form modelAttribute="user" method="POST">--%>
<%--Email : <form:input path="email"/><br />--%>
<%--<form:errors path="email" element="div" cssClass="error" />--%>
<%--Hasło: <form:password path="password" /><br />--%>
<%--<form:errors path="password" element="div" cssClass="error" />--%>
<%--<input type="submit" value="Submit"></input>--%>
<%--</form:form>--%>

<%@ include file="../bootstrap/js.jspf" %>
</body>
</html>