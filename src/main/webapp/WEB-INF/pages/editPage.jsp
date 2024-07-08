<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<c:url value="/edit" var="var"/>

<form action="/edit" method="POST">
    <input type="hidden" name="id" value="${user.id}">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${user.name}">
    <br>
    <label for="surname">Surname:</label>
    <input type="text" id="surname" name="surname" value="${user.surname}">
    <br>
    <label for="age">Age:</label>
    <input type="text" id="age" name="age" value="${user.age}">
    <br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" value="${user.email}">
    <br>
    <input type="submit" value="Save">
</form>
</body>
</html>