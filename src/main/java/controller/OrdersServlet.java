package controller;

import dao.LoginDAO;
import dao.OrdersDAO;
import dao.ProductDAO;
import model.Account;
import model.Item;
import model.Orders;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/checkout"})
public class OrdersServlet extends HttpServlet {
    private OrdersDAO ordersDAO;
    private LoginDAO loginDAO;

    @Override
    public void init() throws ServletException {
        ordersDAO = new OrdersDAO();
        loginDAO = new LoginDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        Orders orders = (Orders) session.getAttribute("orders");
        List<Item> listItem = orders.getListItem();
        Account account = (Account) session.getAttribute("acc");
        if (account == null) resp.sendRedirect("/login");
        else {
            String username = account.getUsername();
            Date ngaymua = new Date(System.currentTimeMillis());
            int tonggia = (int) session.getAttribute("total");
            int idtk = loginDAO.selectIDTK(username);
            if (ordersDAO.insertOrders(idtk, tonggia, ngaymua)) {
                for (int i = 0; i < listItem.size(); i++) {
                    int danhgia = Integer.parseInt(req.getParameter("s" + i));
                    String binhluan = req.getParameter("c" + i);
                    ordersDAO.insertOrdersDetail(listItem.get(i), danhgia, binhluan);
                }
                listItem.removeAll(listItem);
                session.removeAttribute("orders");
                resp.sendRedirect("view/Cart.jsp");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
    }
}
