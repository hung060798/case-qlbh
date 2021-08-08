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
    <title>Edit Student</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Table Edit Account</h2>
    <form method="post">
        <table class="table">
            <tbody>
            <thead>
            <tr>
                <th>idtk</th>
                <th>username</th>
                <th>password</th>
                <th>email</th>
                <th>address</th>
            </tr>
            </thead>
            <tr>
                <td><input placeholder="Enter the idtk" name="idtk" value="${account.idtk}" readonly></td>
                <td><input placeholder="Enter the username" name="username" value="${account.username}" readonly></td>
                <td><input placeholder="Enter the password" name="password" value="${account.password}" ></td>
                <td><input placeholder="Enter the email" name="email" value="${account.email}"></td>
                <td><input placeholder="Enter the address" name="address" value="${account.address}"></td>
            </tr>
            </tbody>
        </table>
        <c:if test="${checknull4}">
            <h4 style="text-align: center; color: red; font-weight: 600;">Bạn phải nhập đủ trường dữ liệu</h4>
        </c:if>

        <button type="submit" class="btn btn-success">Edit Account</button>
    </form>
    <a href="/account" type="submit" class="btn btn-success">Back</a>
</div>
</body>
</html>
