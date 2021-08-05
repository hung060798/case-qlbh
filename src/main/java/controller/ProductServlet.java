package controller;

import dao.ProductDAO;
import model.Brand;
import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/home"})
public class ProductServlet extends HttpServlet {
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
            case "showAll":
                showProduct(req, resp);
                break;
            case "showDetail":
                showDetailProduct(req, resp);
                break;
            default:
                showLastNHotProduct(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    private void showProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> listProduct = productDAO.selectAllProduct();
        List<Brand> listBrand = productDAO.selectAllBrand();
        req.setAttribute("listProduct", listProduct);
        req.setAttribute("listBrand", listBrand);
        RequestDispatcher rd = req.getRequestDispatcher("/view/Product.jsp");
        rd.forward(req, resp);
    }
    private void showLastNHotProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> listLastProduct = productDAO.selectLastProduct();
        List<Product> listHotProduct = productDAO.selectHotProduct();
        req.setAttribute("listLastProduct", listLastProduct);
        req.setAttribute("listHotProduct", listHotProduct);
        RequestDispatcher rd = req.getRequestDispatcher("/view/Home.jsp");
        rd.forward(req, resp);
    }

    private void showDetailProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idsp = Integer.parseInt(req.getParameter("idsp"));
        Product product = productDAO.selectProductByID(idsp);
        int giaAo = (int) (product.getGia() * 1.05);
        req.setAttribute("product", product);
        req.setAttribute("giaAo", giaAo);
        RequestDispatcher rd = req.getRequestDispatcher("/view/Detail.jsp");
        rd.forward(req, resp);
    }


}
