<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h2>Edit User</h2>
<form action="${pageContext.request.contextPath}/edit" method="post">
    <input type="hidden" name="id" value="${user.id}">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${user.name}" required><br><br>
    <label for="surname">Surname:</label>
    <input type="text" id="surname" name="surname" value="${user.surname}" required><br><br>
    <label for="age">Age:</label>
    <input type="number" id="age" name="age" value="${user.age}" required><br><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${user.email}" required><br><br>
    <input type="submit" value="Save">
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to User List</a>
</body>
</html>