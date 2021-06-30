<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 28/05/2021
  Time: 9:51 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${product.name}</td>
    </tr>
    <tr>
    <tr>
        <td>Price: </td>
        <td>${product.price}"</td>
    </tr>
    <tr>
        <td>Description: </td>
        <td>${product.description}"</td>
    </tr>
    <tr>
        <td>Producer: </td>
        <td>${product.producer}"</td>
    </tr>
</table>
</body>
</html>