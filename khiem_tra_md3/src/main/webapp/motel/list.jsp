<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/07/2021
  Time: 9:02 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="assert/bootstrap413/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assert/datatables/css/dataTables.bootstrap4.min.css"/>
</head>
<body>
<div>
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#"><h1>Customer Management</h1></a>
                <form action="/motel" class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm theo country" aria-label="Search"name="name" id="search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="action" value="search">Search</button>
                </form>
            </div>
        </nav>
        <div style="margin-left: 5%">
        <span>
            <a class="btn btn-primary" href="/motel?action=add">add new Customer</a>
        </span>
            <span style="margin-left: 72%">
            <a class="btn btn-primary" href="/motel?action=sort">sort by name</a>
        </span>
        </div>

    </div>
</div>
<div class="container" style="width: 80%;margin-top: 3%">
    <table id="table" class="table table-dark">
        <thead>
        <tr>
            <td>NoOfOder</td>
            <th>Name</th>
            <th>phone</th>
            <th>rentalStart</th>
            <th>paymentsId</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items='${motel}' var="motel" varStatus="loop">

            <tr>
                <td>${loop.index+1}</td>
                <td><a href="/motel?action=view&id=${motel.id}">${motel.name}</a></td>
                <td>${motel.phone}</td>
                <td>${motel.rentalStart}</td>
                <td>${motel.paymentsId}</td>
                <td>
                    <button type="button" class="btn btn-danger"
                            onclick="sendDataToModal('${motel.id}','${motel.name}')" data-toggle="modal"
                            data-target="#exampleModalLong">Delete
                    </button>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
         aria-hidden="true">
        <form action="/customer" method="post">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input hidden type="text" name="id" id="idCustomer">
                        <p>Bạn có muốn xóa :<span id="nameCustomer"></span></p>
                    </div>
                    <div class="modal-footer d-flex justify-content-around">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Cancel</button>
                        <input type="hidden" name="action" value="delete">
                        <button type="submit" class="btn btn-danger ">Delete</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="assert/jquery/jquery-3.5.1.min.js"></script>
<script src="assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="assert/jquery/popper.min.js"></script>
<script src="assert/bootstrap413/js/bootstrap.js"></script>
<script>
    $(document).ready(function () {
        $('#table').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 4
        });
    });

    function sendDataToModal(id, name) {
        document.getElementById("idCustomer").value = id;
        document.getElementById("nameCustomer").innerText = name;
    }
</script>
</body>
</html>

