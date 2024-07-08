<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New User</title>
</head>
<body>
<h2>Add New User</h2>
<form action="/add" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name"><br><br>
    <label for="surname">Surname:</label>
    <input type="text" id="surname" name="surname"><br><br>
    <label for="age">Age:</label>
    <input type="text" id="age" name="age"><br><br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email"><br><br>
    <input type="submit" value="Add">
</form>
<br>
<a href="/">Back to User List</a>
</body>
</html>