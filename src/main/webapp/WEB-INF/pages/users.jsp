<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>USER</title>
</head>
<body>

<h2>Users</h2>
<table>

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Email</th>
        <th>Actions</th>
    </tr>

    <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.age}</td>
            <td>${user.email}</td>
            <td>
                <a href="/edit/${user.id}">Edit</a>
                <a href="/delete/${user.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>

</table>
<h2>Add</h2>
<c:url value="/add" var="add"/>
<a href="${add}">Add</a> new user</a>
</body>
</html>