<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/8/2021
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
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


    <h2>Show Sản Phẩm</h2>
    <a href="/product?action=create" class="btn btn-success">Create</a>
    <br>
    <form action="/product" method="get">
        <input type="text" placeholder="Enter the name of the brand you want to find" name ="findName">
        <input type="text" hidden name="action" value="findName">
        <button type="submit" class="btn btn-info">Find by idbranch </button>
    </form>
    <table class="table" border="2px">
        <thead>
        <tr>
            <th>idsp</th>
            <th>Tên Sản Phẩm</th>
            <th>Hình Ảnh</th>
            <th>Giá</th>
            <th>Số Lượng</th>
            <th>Màu Sắc</th>
            <th>Kích Thước</th>
            <th>idbrand</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ListProduct}" var="product" varStatus="loop">
            <tr>
<%--                (int idsp, String tensp, String img, int gia, int soluong, String mausac, String size, String mota, int idbrand&ndash;%&gt;--%>
                <td>${product.idsp}</td>
                <td>${product.tensp}</td>
                <td>${product.img}</td>
                <td>${product.gia}</td>
                <td>${product.soluong}</td>
                <td>${product.mausac}</td>
                <td>${product.size}</td>
                <td>${product.idbrand}</td>
                <td><a href="/product?action=edit&index=${loop.index}" class="btn btn-warning">Edit</a></td>
                <td><a href="/product?action=delete&index=${loop.index}" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <a href="/product?action=back" type="submit" class="btn btn-success">Home</a>
</div>
</body>
</html>

