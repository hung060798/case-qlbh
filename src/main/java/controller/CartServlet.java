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
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        if (action == null) action = "";
    }

    private void addToCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int soluongmua = 1;
        int idsp;
        if (req.getParameter("idsp") != null) {
        idsp = Integer.parseInt(req.getParameter("idsp"));
        Product product = productDAO.selectProductByID(idsp);
        if(req.getParameter("soluongmua")!=null) {
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
        RequestDispatcher rd = req.getRequestDispatcher("/view/Cart.jsp");
        rd.forward(req, resp);
    }
}
