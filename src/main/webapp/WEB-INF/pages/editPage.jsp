<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h2>Edit User</h2>
<form action="${pageContext.request.contextPath}/edit" method="post">
    <input type="hidden" name="id" value="${user.id}"/>
    <label>Name:</label>
    <input type="text" name="name" value="${user.name}"/><br/>
    <label>Surname:</label>
    <input type="text" name="surname" value="${user.surname}"/><br/>
    <label>Age:</label>
    <input type="text" name="age" value="${user.age}"/><br/>
    <label>Email:</label>
    <input type="text" name="email" value="${user.email}"/><br/>
    <input type="submit" value="Save"/>
</form>
</body>
</html>