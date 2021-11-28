<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/07/2021
  Time: 9:01 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div  style="margin-left: 5%">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#"><h1>Customer Management</h1></a>
        </div>
    </nav>

    <h2>
        <a class="btn btn-primary" href="customer?action=customer">Back to list</a>
    </h2>
</div>


<div class="container" style="width: 80%">
    <form method="post">
        <caption>
            <h3>Add New Customer</h3>
        </caption>
        <table border="1" cellpadding="5" class="table table-dark">
            <tr>
                <th> CustomerCode:</th>
                <td>
                    <input class="form-control" type="text" name="code" id="code" />
                </td>
            </tr>
            <tr>
                <th>idTypeCustomers:</th>
                <td>
                    <select class="form-control" name="typeId" id="typeId">
                        <c:forEach items='${customerTypeList}' var="customerTypes">
                            <option value=${customerTypes.typeId}>${customerTypes.customerTypeName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th> Name:</th>
                <td>
                    <input class="form-control" type="text" name="name" id="name" />
                    <c:if test="${checkName != null}">
                        <small id="name" class="form-text text-danger">${checkName}</small>
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>birthday:</th>
                <td>
                    <input type="date" class="form-control" id="birthday" name="birthday">
                    <c:if test="${checkDay != null}">
                        <small id="birthday" class="form-text text-danger">${checkDay}</small>
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>
                    Gender
                </th>
                <td>
                    <input type="radio" name="gender" value="male"> Male<br>
                    <input type="radio" name="gender" value="female"> Female<br>
                    <input type="radio" name="gender" value="gay"> Other
                </td>
            </tr>
            <tr>
                <th>card:</th>
                <td>
                    <input class="form-control" type="text" name="idCard" id="idCard" />
                    <c:if test="${checkIdCard != null}">
                        <small id="idCard" class="form-text text-danger">${checkIdCard}</small>
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>phone number:</th>
                <td>
                    <input class="form-control" type="text" name="phone" id="phone"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input class="form-control" type="text" name="email" id="email" />
                </td>
            </tr>
            <tr>
                <th>address:</th>
                <td>
                    <input class="form-control" type="text" name="address" id="address" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" name="action" value="create"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>