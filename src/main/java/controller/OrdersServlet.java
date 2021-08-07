package controller;

import dao.OrdersDAO;
import dao.ProductDAO;
import model.Account;
import model.Orders;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;

@WebServlet(urlPatterns = {"/checkout"})
public class OrdersServlet extends HttpServlet {
    private OrdersDAO ordersDAO;

    @Override
    public void init() throws ServletException {
        ordersDAO = new OrdersDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        Orders orders = (Orders) session.getAttribute("orders");
        String username = (String) req.getAttribute("username");
        if (username == null) resp.sendRedirect("/view/DangNhap.jsp");
        else {
            Date ngaymua = new Date(System.currentTimeMillis());
            int tonggia = Integer.parseInt(req.getParameter("tonggia"));

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
    }
}
