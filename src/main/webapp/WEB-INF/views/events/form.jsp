<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Zuz_zaw
  Date: 19.06.2018
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="../bootstrap/config.jspf" %>
</head>
<body style="background-color: #eeeeee">
<div class="mx-auto" style="width: 400px;">
    <br/>
    <br/>
    <h2>Dodaj wydarzenie : </h2><br/>
    <div class="d-inline-flex p-2 bd-highlight center-aligned">

        <form:form modelAttribute="form" method="POST">
            <div class="form-group">
                <label>Nazwa Wydarzenia :</label>
                <form:input path="name" class="form-control" placeholder="Podaj nazwę wydarzenia"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="name"/></small>
            </div>
            <div class="form-group">
                <label>Data Wydarzenia :</label>
                <form:input path="date" type  ="date"  class="form-control"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="date"/></small>
            </div>
            <div class="form-group">
                <label>Godzina Wydarzenia :</label>
                <form:input path="time" type  ="time"  class="form-control"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="time"/></small>
            </div>
            <div class="form-group">
                <label>Lokalizacja Wydarzenia :</label>
                <form:input path="place" class="form-control"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="place"/></small>
            </div>
            <div class="form-group">
                <label>Opis Wydarzenia :</label>
                <form:input path="text" class="form-control"/>
                <small id="emailHelp" class="form-text text-muted"><form:errors path="text"/></small>
            </div>
            <button type="submit" class="btn btn-outline-info">Wyślij</button>
        </form:form>
    </div>
</div>


</body>
</html>
