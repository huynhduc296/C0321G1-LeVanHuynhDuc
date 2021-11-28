<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/07/2021
  Time: 9:02 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</head>
<body>
<div  style="margin-left: 5%">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#"><h1>Customer Management</h1></a>
        </div>
    </nav>

    <h2>
        <a class="btn btn-primary" href="/customer" >Back to list</a>
    </h2>
</div>

<div class="container" style="width: 80%">
    <form method="post">
        <caption>
            <h2>
                Edit Customer
            </h2>
        </caption>
        <table class="table table-dark" border="1" cellpadding="5">
            <tr>
                <th>Customer code id:</th>
                <td><input type="text" name="code" class="form-control" value="${customer.code}"></td>
            </tr>
            <tr>
                <th>idTypeCustomers:</th>
                <td>
                    <select name="typeId" id="typeId">
                        <c:forEach items='${customerTypeList}' var="customerTypes">
                            <option value="${customerTypes.typeId}" ${customerTypes.typeId==customer.typeId?"selected":""}>${customerTypes.customerTypeName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="name" class="form-control" value='${customer.name}'></td>
            </tr>
            <tr>
                <th>Birthday:</th>
                <td><input type="date" name="birthday" class="form-control" value='${customer.birthday}'></td>
            </tr>
            <tr>
                <th>Gender:</th>
                <td><input type="text" name="gender" class="form-control" value='${customer.gender}'></td>
            </tr>
            <tr>
                <th> IdCard :</th>
                <td><input type="text" name="idCard" class="form-control" value='${customer.idCard}'></td>
            </tr>
            <tr>
                <th>PhoneNumber:</th>
                <td><input type="text" name="phone" class="form-control" value='${customer.phone}'></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><input type="text" name="email" class="form-control" value='${customer.email}'></td>
            </tr>
            <tr>
                <th>address:</th>
                <td><input type="text" name="address" class="form-control" value='${customer.address}'></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input class="btn btn-primary" type="submit"  value="edit"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>