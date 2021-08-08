package controller;

import dao.ProductDAO;
import model.Item;
import model.Orders;
import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {
    private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        if (action == null) action = "";
        switch (action) {
            case "add":
                addToCart(req, resp);
                break;
            case "remove":
                removeItem(req, resp);
                break;
            case "removeAll":
                removeAllItem(req, resp);
                break;
            case "showBill":
                showBill(req, resp);
                break;
            case "increase":
                increaseQuantity(req, resp);
                break;
            case "decrease":
                decreaseQuantity(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");

    }

    private void addToCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int soluongmua = 1;
        int idsp;
        if (req.getParameter("idsp") != null) {
            idsp = Integer.parseInt(req.getParameter("idsp"));
            Product product = productDAO.selectProductByID(idsp);
            if (req.getParameter("soluongmua") != null) {
                soluongmua = Integer.parseInt(req.getParameter("soluongmua"));
            }
            HttpSession session = req.getSession();
            if (session.getAttribute("orders") == null) {
                Item item = new Item();
                item.setProduct(product);
                item.setSoluongmua(soluongmua);
                Orders orders = new Orders();
                orders.getListItem().add(item);
                session.setAttribute("orders", orders);
            } else {
                Orders orders = (Orders) session.getAttribute("orders");
                List<Item> listItem = orders.getListItem();
                boolean check = false;
                for (Item i : listItem) {
                    if (i.getProduct().getIdsp() == product.getIdsp()) {
                        i.setSoluongmua(i.getSoluongmua() + soluongmua);
                        check = true;
                    }
                }
                if (check == false) {
                    Item item = new Item();
                    item.setProduct(product);
                    item.setSoluongmua(soluongmua);
                    orders.getListItem().add(item);
                }
                session.setAttribute("orders", orders);
            }

        }
        String site = req.getParameter("site");
        if (site == null) site = "";
        switch (site) {
            case "home":
                resp.sendRedirect("/home");
                break;
            case "product":
                resp.sendRedirect("/home?action=showAll");
                break;
            default:
                resp.sendRedirect("view/Cart.jsp");
        }

    }

    private void removeItem(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        Orders orders = (Orders) session.getAttribute("orders");
        List<Item> listItem = orders.getListItem();
        int id = Integer.parseInt(req.getParameter("idsp"));
        if (listItem != null) {
            for (Item i : listItem) {
                if (i.getProduct().getIdsp() == id) {
                    listItem.remove(listItem.indexOf(i));
                    break;
                }
            }
        }
        resp.sendRedirect("view/Cart.jsp");
    }

    private void removeAllItem(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        Orders orders = (Orders) session.getAttribute("orders");
        List<Item> listItem = orders.getListItem();
        if (listItem != null) listItem.removeAll(listItem);
        resp.sendRedirect("view/Cart.jsp");
    }

    private void showBill(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Orders orders = (Orders) session.getAttribute("orders");
        List<Item> listItem = orders.getListItem();
        int total = 0;
        if (listItem != null) {
            for (Item i : listItem) {
                total += i.getSoluongmua() * i.getProduct().getGia();
            }
        }
        int coupon = 0;
        int vat = (int) (0.02 * total);
        String code = req.getParameter("code");
        if (code == null) {
            coupon = 0;
            code = "";
        }
        if (code.equals("dungct") || code.equals("dat09") || code.equals("hungdegau")) {
            coupon = (int) (0.05 * total);
            req.setAttribute("notice", true);
        }
        session.setAttribute("total", total);
        req.setAttribute("vat", vat);
        req.setAttribute("coupon", coupon);
        req.setAttribute("sum", total - coupon + vat);
        RequestDispatcher rd = req.getRequestDispatcher("view/Cart.jsp");
        rd.forward(req, resp);
    }

    private void increaseQuantity(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        Orders orders = (Orders) session.getAttribute("orders");
        List<Item> listItem = orders.getListItem();
        int id = Integer.parseInt(req.getParameter("id"));
        for (Item item : listItem) {
            if (item.getIditem() == id) {
                int soluongmua = item.getSoluongmua();
                soluongmua++;
                item.setSoluongmua(soluongmua);
                resp.sendRedirect("view/Cart.jsp");
            }
        }
    }

    private void decreaseQuantity(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        Orders orders = (Orders) session.getAttribute("orders");
        List<Item> listItem = orders.getListItem();
        int id = Integer.parseInt(req.getParameter("id"));
        for (Item item : listItem) {
            if (item.getIditem() == id) {
                int soluongmua = item.getSoluongmua();
                soluongmua--;
                item.setSoluongmua(soluongmua);
                resp.sendRedirect("view/Cart.jsp");
            }
        }
    }
}
