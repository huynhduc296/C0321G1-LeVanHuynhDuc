<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 01/06/2021
  Time: 2:21 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit new user</h1>
<p>
    <c:if test='${message != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/users">Back to list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>

            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${user.name}"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="email" id="Email" value="${user.email}"></td>
            </tr>
            <tr>
                <td>Country: </td>
                <td><input type="text" name="country" id="country"value="${user.country}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update User"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>