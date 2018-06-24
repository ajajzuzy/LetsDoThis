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
</head>
<body>
<form:form modelAttribute="form" method="POST">
    Name : <form:input path="name"/><form:errors path="name" cssClass="error"/>
    <input type="submit" value="Wyślij">
</form:form>

</body>
</html>
