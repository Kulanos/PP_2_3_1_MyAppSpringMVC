<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Add New User</title>
</head>
<body>
<h2>Add New User</h2>
<form action="${pageContext.request.contextPath}/add" method="post">
    <label>Name:</label>
    <input type="text" name="name"/><br/>
    <label>Surname:</label>
    <input type="text" name="surname"/><br/>
    <label>Age:</label>
    <input type="text" name="age"/><br/>
    <label>Email:</label>
    <input type="text" name="email"/><br/>
    <input type="submit" value="Add"/>
</form>
</body>
</html>