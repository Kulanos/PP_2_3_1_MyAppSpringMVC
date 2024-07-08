<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add New User</title>
</head>
<body>
<h2>Add New User</h2>
<form action="${pageContext.request.contextPath}/add" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br><br>
    <label for="surname">Surname:</label>
    <input type="text" id="surname" name="surname" required><br><br>
    <label for="age">Age:</label>
    <input type="number" id="age" name="age" required><br><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br><br>
    <input type="submit" value="Add">
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to User List</a>
</body>
</html>