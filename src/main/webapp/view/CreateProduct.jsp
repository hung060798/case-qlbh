<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/8/2021
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thêm mới sản phẩm</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Table Create Product</h2>
    <form action="/product?action=create" method="post">
        <table class="table">
            <tbody>
            <tr>
<%--                (int idsp, String tensp, String img, int gia, int soluong, String mausac, String size, String mota, int idbrand--%>
                <td><input placeholder="Enter the tensp" name="tensp"></td>
                <td><input placeholder="Enter the img" name="img"></td>
                <td><input placeholder="Enter the price" name="gia"></td>
                <td><input placeholder="Enter the soluong" name="soluong"></td>
                <td><input placeholder="Enter the mausac" name="mausac"></td>
                <td><input placeholder="Enter the size" name="size"></td>
                <td><input placeholder="Enter the mota" name="mota"></td>
                <td><input placeholder="Enter the idbrand" name="idbrand"></td></tr>
            </tbody>
        </table>
        <c:if test="${checkNull1}">
            <h4 style="text-align: center; color: red; font-weight: 600;">Bạn phải nhập đủ trường dữ liệu</h4>
        </c:if>
        <button type="submit" class="btn btn-success">Create Product</button>
    </form>
    <a href="/product" type="submit" class="btn btn-success">Back</a>
</div>
</body>
</html>
