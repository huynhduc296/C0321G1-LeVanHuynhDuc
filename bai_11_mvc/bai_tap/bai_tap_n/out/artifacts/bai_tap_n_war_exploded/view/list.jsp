<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 31/05/2021
  Time: 3:32 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <h1>user List</h1>
    <table>
        <tr>
            <th>STT</th>
            <th>Tên</th>
            <th>email</th>
            <th>country</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${user}" var ="user" varStatus="status">
            <tr>
                <td>${status.count+1}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td><a href="user?action=edit&id=${user.id}">Edit</a></td>
                <td><a href="user?action=delete&id=${user.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
