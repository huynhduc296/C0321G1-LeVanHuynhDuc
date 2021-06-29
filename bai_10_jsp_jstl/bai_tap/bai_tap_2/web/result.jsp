<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 31/05/2021
  Time: 8:06 SA
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h1>Result</h1>
<p><c:out value="${first}"></c:out> <c:out value="${operator}"></c:out> <c:out value="${second}"></c:out> = <c:out value="${result}"></c:out></p>
</body>
</html>
