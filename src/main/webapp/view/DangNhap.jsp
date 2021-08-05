<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/8/2021
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Đăng nhập</title>
    <link rel="stylesheet" type="text/css" href="view/abc.css">
<body>
<%--<%--%>
<%--    String username_err = "", password_err = "", repassword_err = "", email_err = "", address_err ="";--%>
<%--    if(request.getAttribute("username_err")!=null){--%>
<%--        username_err= (String) request.getAttribute("username_err");--%>
<%--    }--%>
<%--    if(request.getAttribute("password_err")!=null){--%>
<%--        password_err= (String) request.getAttribute("password_err");--%>
<%--    }--%>
<%--    if(request.getAttribute("repassword_err")!=null){--%>
<%--        repassword_err= (String) request.getAttribute("repassword_err");--%>
<%--    }--%>
<%--    if(request.getAttribute("email_err")!=null){--%>
<%--        email_err= (String) request.getAttribute("email_err");--%>
<%--    }--%>
<%--    if(request.getAttribute("address_err")!=null){--%>
<%--        address_err= (String) request.getAttribute("address_err");--%>
<%--    }--%>
<%--%>--%>
<center>
    <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto p-0">
            <div class="card">
                <div class="login-box">
                    <div class="login-snip"> <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                        <div class="login-space">
                            <div class="login">
                                <form action="/login?action=dangnhap" method="post">
                                    <div class="group"> <label for="user" class="label" style="color: white">Username</label> <input id="user" type="text" class="input" placeholder="Enter your username" name="username"> </div>
                                    <div class="group"> <label for="pass" class="label" style="color: white">Password</label> <input id="pass" type="password" class="input" data-type="password" placeholder="Enter your password" name="password"> </div>
                                    <div class="group"> <input type="submit" class="button" value="Sign In"> </div>
                                    <c:if test="${checkAcc}">
                                        <h4 style="text-align: center; color: red; font-weight: 600;">Tài khoản hoặc mật khẩu không chính xác !!!</h4>
                                    </c:if>
                                </form>
                                <div class="hr"></div>
                                <div class="foot"> <a href="#">Forgot Password?</a> </div>
                            </div>

                            <div class="sign-up-form">

                                <form action="/login?action=create" method="post">
                                    <div class="group"> <label for="user" class="label" style="color: white">Username</label> <input  type="text" class="input" placeholder="Create your Username" name="username"> </div>
<%--                                    <p style="color: red"><%=username_err%></p>--%>
                                    <div class="group"> <label for="pass" class="label" style="color: white">Password</label> <input  type="password" class="input" data-type="password" name="password" placeholder="Create your password"> </div>
<%--                                    <p style="color: red"><%=password_err%></p>--%>
                                    <div class="group"> <label for="pass" class="label" style="color: white">Repassword</label> <input  type="password" class="input" data-type="password" name="repassword" placeholder="Enter the repassword"> </div>
<%--                                    <p style="color: red"><%=repassword_err%></p>--%>
                                    <div class="group"> <label for="pass" class="label" style="color: white">Email Address</label> <input type="text" class="input" name="email" placeholder="Enter your email address"> </div>
<%--                                    <p style="color: red"><%=email_err%></p>--%>
                                    <div class="group"> <label for="pass" class="label" style="color: white">Address</label> <input  type="text" class="input"  name="address" placeholder="Enter the address"> </div>
<%--                                    <p style="color: red"><%=address_err%></p>--%>
                                    <font color="blue"> <p>Loại tài khoản : </p>
                                        <label><input name="loaiTK" value="1" type="radio" checked/>Nhân viên</label> <br/>
                                        <label><input name="loaiTK"  value="0" type="radio"/>Khách hàng</label> <br/></font>
                                    <c:if test="${checkUser}">
                                        <h4 style="text-align: center; color: red; font-weight: 600;">Tài khoản hoặc email đã tồn tại!!!</h4>
                                    </c:if>
                                    <c:if test="${checkEmail}">
                                        <h4 style="text-align: center; color: red; font-weight: 600;">Email không hợp lệ!!!</h4>
                                    </c:if>

                                    <c:if test="${checkNull}">
                                        <h4 style="text-align: center; color: red; font-weight: 600;">Bạn đã nhập thiếu hoặc sai dữ liệu !!!</h4>
                                    </c:if>

                                    <div class="group"> <input type="submit" class="button" value="Sign Up"> </div>
                                </form>
                                <div class="hr"></div>
                                <div class="foot"> <label for="tab-1">Already Member?</label> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</center>
</body>
</html>
