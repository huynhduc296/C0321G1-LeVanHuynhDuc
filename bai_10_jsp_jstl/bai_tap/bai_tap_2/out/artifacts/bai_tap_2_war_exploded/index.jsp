<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 27/05/2021
  Time: 10:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<form action="/calculator" method="post">
  <table>
    <tr>
      <td>First operand:</td>
      <td>
        <input type="text" name="first">
      </td>
    </tr>
    <tr>
      <td>
        Operator:
      </td>
      <td>
        <select name="operator" id="">
          <option value="+">Cong</option>
          <option value="-">Trừ</option>
          <option value="*">Nhân</option>
          <option value="/">Chia</option>
        </select>
      </td>
    </tr>
    <tr>
      <td>Second operand:</td>
      <td>
        <input type="text" name="second">
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit">
      </td>

    </tr>
  </table>
</form>
</body>
</html>