<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 01/06/2021
  Time: 1:58 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${message != null}'>
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/users">Back to list</a>
</p>
<%--action=/users?action=add&id=${user.id}"--%>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>email: </td>
                <td><input type="text" name="email" id="email"></td>
            </tr>
            <tr>
                <td>country: </td>
                <td><input type="text" name="country" id="country"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="add user"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>