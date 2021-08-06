package controller;

import dao.LoginDAO;
import model.Account;
import service.AccService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    AccService accService = new AccService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher dispatcher;
        Cookie arr[]= req.getCookies();
        for(Cookie o:arr){
            if(o.getName().equals("userC")){
                req.setAttribute("username",o.getValue());
            }if(o.getName().equals("passC")){
                req.setAttribute("password",o.getValue());
            }
        }


        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                resp.sendRedirect("view/DangNhap.jsp");
                break;
            case "dangnhap":
                resp.sendRedirect("view/DangNhap.jsp");
                break;
            default:
                dispatcher = req.getRequestDispatcher("view/DangNhap.jsp");
                dispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher dispatcher;
        switch (action) {
            case "create":
                String username = req.getParameter("username");
                String password = req.getParameter("password");
                String repassword = req.getParameter("repassword");
                String email = req.getParameter("email");
                String address = req.getParameter("address");
                String loaiTK = req.getParameter("loaiTK");
                if(EmailCondition.checkEmail(email)==true) {

                    if (username == "" || password == "" || repassword == "" || email == "" || address == "" || !password.equals(repassword) || password.length() < 6) {
                        req.setAttribute("checkNull", true);
                        dispatcher = req.getRequestDispatcher("view/DangNhap.jsp");
                        dispatcher.forward(req, resp);
                    } else if (accService.KtraAcc(username, email) == false) {
                        req.setAttribute("checkUser", true);
                        dispatcher = req.getRequestDispatcher("view/DangNhap.jsp");
                        dispatcher.forward(req, resp);
                    } else {
                        Account tk = new Account(username, password, email, address, Integer.parseInt(loaiTK));
                        try {
                            accService.add(tk);
                        } catch (SQLException throwables) {
                            throwables.printStackTrace();
                        }
                    }
                    dispatcher = req.getRequestDispatcher("view/DangNhap.jsp");
                    dispatcher.forward(req, resp);
                }else {
                    req.setAttribute("checkEmail", true);
                    dispatcher = req.getRequestDispatcher("view/DangNhap.jsp");
                    dispatcher.forward(req, resp);
                }
                break;
            case "dangnhap":
                String username1 = req.getParameter("username");
                String password1 = req.getParameter("password");

                Account a = LoginDAO.login(username1, password1);
                if (a == null) {
                    req.setAttribute("checkAcc", true);
                    dispatcher = req.getRequestDispatcher("view/DangNhap.jsp");
                    dispatcher.forward(req, resp);
                } else {
                    req.setAttribute("account",a);
                    HttpSession session= req.getSession();
                    session.setAttribute("acc",a);
                    Cookie u= new Cookie("userC",username1);
                    Cookie p= new Cookie("passC",password1);
                    u.setMaxAge(3600);
                    p.setMaxAge(3600);
                    resp.addCookie(u);
                    resp.addCookie(p);
                        dispatcher = req.getRequestDispatcher("view/Home.jsp");
                        dispatcher.forward(req, resp);
                }
                break;
        }
    }
}