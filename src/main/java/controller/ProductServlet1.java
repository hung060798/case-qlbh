package controller;

import dao.ProductDAO;
import model.Product;
import service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/product"})
public class ProductServlet1 extends HttpServlet {
    ProductService productService = new ProductService();
    private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        RequestDispatcher dispatcher;
        if (action == null){
            action= "";
        }
        switch (action){
            case "back":
                req.setAttribute("ListProduct",productService.list);
                dispatcher = req.getRequestDispatcher("view/Home.jsp");
                dispatcher.forward(req,resp);
                break;
            case "create":
                resp.sendRedirect("view/CreateProduct.jsp");
                break;
            case "edit":
                int eId = Integer.parseInt(req.getParameter("idsp"));
                req.setAttribute("product", productDAO.selectProductByID(eId));
                dispatcher = req.getRequestDispatcher("view/EditProduct.jsp");
                dispatcher.forward(req,resp);
                break;

            case "delete":
                int dID = Integer.parseInt(req.getParameter("idsp"));
                productDAO.deleteProduct(dID);
                resp.sendRedirect("/product");
                break;
            case "findName":
                String name = req.getParameter("findName");
                try {
                req.setAttribute("ListProduct", productService.findByName(name));
                } catch (SQLException sqlException) {
                    sqlException.printStackTrace();
                }
                dispatcher = req.getRequestDispatcher("view/ShowProduct.jsp");
                dispatcher.forward(req,resp);
                break;

            default:
                req.setAttribute("ListProduct",productDAO.selectAllProduct());
                dispatcher = req.getRequestDispatcher("view/ShowProduct.jsp");
                dispatcher.forward(req,resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        RequestDispatcher dispatcher;
        switch (action) {
            case "create":
                String tensp = req.getParameter("tensp");
                String img = req.getParameter("img");
                String gia = req.getParameter("gia");
                String soluong = req.getParameter("soluong");
                String mausac = req.getParameter("mausac");
                String size = req.getParameter("size");
                String mota = req.getParameter("mota");
                String idbrand = req.getParameter("idbrand");
                if (tensp == "" ||img==""||gia==""||soluong==""||mausac==""||size==""||mota==""||idbrand=="") {
                    req.setAttribute("checkNull1", true);
                    dispatcher = req.getRequestDispatcher("view/CreateProduct.jsp");
                    dispatcher.forward(req, resp);
                }
                try {
                    Product product = new Product(tensp, img, Integer.parseInt(gia), Integer.parseInt(soluong), mausac,size,mota,Integer.parseInt(idbrand));
                    productService.add(product);
                } catch (SQLException sqlException) {
                    sqlException.printStackTrace();
                }

                resp.sendRedirect("/product");
                break;
            case "edit":
                int idsp1 = Integer.parseInt(req.getParameter("idsp"));
                String tensp1 = req.getParameter("tensp");
                String img1 = req.getParameter("img");
                int gia1 = Integer.parseInt(req.getParameter("gia"));
                int soluong1 = Integer.parseInt(req.getParameter("soluong"));
                String mausac1 = req.getParameter("mausac");
                String size1 = req.getParameter("size");
                String mota1 = req.getParameter("mota");
                int idbrand1 = Integer.parseInt(req.getParameter("idbrand"));

                Product product1 = new Product(idsp1, tensp1, img1, gia1,soluong1,mausac1,size1,mota1,idbrand1);

                productDAO.editProduct(product1);


                // chuyển hướng request và response sang thàng jsp
                req.setAttribute("ListProduct", productDAO.selectAllProduct());
                dispatcher = req.getRequestDispatcher("view/ShowProduct.jsp");
                dispatcher.forward(req, resp);
                break;

            case "find":
                int idfind = Integer.parseInt(req.getParameter("idfind"));
                ArrayList<Product> list1 = new ArrayList<>();
                for(Product p: productService.list){
                    if(p.getIdsp()==idfind){
                        list1.add(p);
                    }
                }
                req.setAttribute("ListProduct",list1);
                dispatcher= req.getRequestDispatcher("view/ShowProduct.jsp");
                dispatcher.forward(req, resp);
                break;
        }
    }
}
