<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/07/2021
  Time: 9:48 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Show info customer</h1>
<table class="table table-striped" id="tableCustomer">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Code</th>
        <th scope="col">Name</th>
        <th scope="col">Birthday</th>
        <th scope="col">Gender</th>
        <th scope="col">Id Card</th>
        <th scope="col">Phone</th>
        <th scope="col">Email</th>
        <th scope="col">Type of customer</th>
        <th scope="col">Address</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>${customer.id}</th>
        <th>${customer.code}</th>
        <td>${customer.name}</td>
        <td>${customer.birthday}</td>
        <td>${customer.gender}</td>
        <td>${customer.idCard}</td>
        <td>${customer.phone}</td>
        <td>${customer.email}</td>
        <c:forEach items="${customerTypeList}" var="customers">
            <c:if test="${customers.typeId == customer.typeId}">
                <td>${customers.customerTypeName}</td>
            </c:if>
        </c:forEach>
        <td>${customer.address}</td>
    </tr>
    </tbody>
</table>
</body>
</html>