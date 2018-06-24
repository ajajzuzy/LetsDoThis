<%--
  Created by IntelliJ IDEA.
  User: Zuz_zaw
  Date: 18.06.2018
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Twitter - rejestracja</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
    <%@ include file="../bootstrap/config.jspf" %>
</head>
<body style="background-color: #eeeeee">
<div class="mx-auto" style="width: 400px;">
    <br/>
    <br/>
    <h2>Zarejestruj się : </h2><br/>
    <div class="d-inline-flex p-2 bd-highlight center-aligned">

        <form:form modelAttribute="user" method="POST">
            <div class="form-group">
                <label for="exampleInputEmail1">Adres email</label>
                <form:input path="email" type="email" class="form-control" id="exampleInputEmail1"
                            aria-describedby="emailHelp" placeholder="Dodaj email"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="email"/></small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Hasło</label>
                <form:password path="password" class="form-control" id="exampleInputPassword1"
                               placeholder="Dodaj hasło"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="password"/></small>
            </div>
                <div class="form-group">
                    <label>Imię :</label>
                    <form:input path="firstname" class="form-control" placeholder="Dodaj imię"/>
                    <small id="emailHelp" class="form-text text-muted"><form:errors path="firstname"/></small>
            </div>
            <div class="form-group">
                <label>Nazwisko :</label>
                <form:input path="lastname" class="form-control" placeholder="Dodaj nazwisko"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="lastname"/></small>
            </div>
            <div class="form-group">
                <label>Miasto :</label>
                <form:select items="${cites}" path="city.id" itemValue="id" itemLabel="name"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="city"/></small>
            </div>

            <%--<div class="form-group form-check">--%>
            <%--<input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
            <%--<label class="form-check-label" for="exampleCheck1">Check me out</label>--%>
            <%--</div>--%>
            <button type="submit" class="btn btn-success">Submit</button>
        </form:form>
    </div>
</div>



<%--<form:form modelAttribute="user" method="POST">--%>
    <%--Hasło: <form:password path="password" /><br />--%>
    <%--<form:errors path="password" element="div" cssClass="error" />--%>
    <%--Email : <form:input path="email"/><br />--%>
    <%--<form:errors path="email" element="div" cssClass="error" />--%>
    <%--Imię : <form:input path="firstname"/><br />--%>
    <%--<form:errors path="firstname" element="div" cssClass="error" />--%>
    <%--Nazwisko : <form:input path="lastname"/><br />--%>
    <%--<form:errors path="lastname" element="div" cssClass="error" />--%>
    <%--Miasto :  <form:select items="${cites}" path="city.id" itemValue="id" itemLabel="name"/><br/>--%>
    <%--<form:errors path="city" cssClass="error"/>--%>
    <%--<input type="submit" value="Submit"></input>--%>
<%--</form:form>--%>
</body>
</html>
<%--<form:options items="${cites}" itemLabel="name" itemValue="id"></form:options>--%>