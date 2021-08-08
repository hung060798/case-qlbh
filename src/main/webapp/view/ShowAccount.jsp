<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/8/2021
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách tài khoản</title>
    <style>
        .container{
            background-color: greenyellow;
        }
        .table{
            background-color: lightblue;
        }
    </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">


    <h2>Danh Sách Tài Khoản Khách Hàng</h2>
    <br>
    <form action="/account" method="get">
    </form>
    <table class="table" border="2px">
        <thead>
        <tr>
            <th>username</th>
            <th>password</th>
            <th>email</th>
            <th>address</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ListAccount}" var="account" varStatus="loop">
            <tr>
                <td>${account.username}</td>
                <td>${account.password}</td>
                <td>${account.email}</td>
                <td>${account.address}</td>
                <td><a href="/account?action=edit&index=${loop.index}" class="btn btn-warning">Edit</a></td>
                <td><a href="/account?action=delete&index=${loop.index}" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <a href="/home" type="submit" class="btn btn-success">Home</a>
</div>
</body>
</html>
