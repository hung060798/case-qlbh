package dao;

import model.Brand;
import model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private DAO dao;

    public ProductDAO() {
        dao = new DAO();
    }

    private final String SELECT_ALL_PRODUCT = "select * from Product";
    private final String SELECT_PRODUCT_BY_ID = "select * from Product where idsp = ?";
    private final String SELECT_LASTEST_PRODUCT = "select * from Product order by idsp desc limit 4";
    private final String SELECT_HOTTEST_PRODUCT = "select * from Product where soluong > 0 order by soluong limit 4";
    private final String SELECT_ALL_BRAND = "select * from Brand";

    public List<Product> selectAllProduct() {
        List<Product> listProduct = new ArrayList<>();
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(SELECT_ALL_PRODUCT);
            ResultSet rs = pS.executeQuery();
            while(rs.next()) {
                int idsp = rs.getInt(1);
                String tensp = rs.getString(2);
                String img = rs.getString(3);
                int gia = rs.getInt(4);
                int soluong = rs.getInt(5);
                String mausac = rs.getString(6);
                String size = rs.getString(7);
                String mota = rs.getString(8);
                int idbrand = rs.getInt(9);
                listProduct.add(new Product(idsp, tensp, img, gia, soluong, mausac, size, mota, idbrand));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listProduct;
    }

    public Product selectProductByID(int idsp) {
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(SELECT_PRODUCT_BY_ID);
            pS.setInt(1, idsp);
            ResultSet rs = pS.executeQuery();
            while(rs.next()) {
                String tensp = rs.getString(2);
                String img = rs.getString(3);
                int gia = rs.getInt(4);
                int soluong = rs.getInt(5);
                String mausac = rs.getString(6);
                String size = rs.getString(7);
                String mota = rs.getString(8);
                int idbrand = rs.getInt(9);
                return new Product(idsp, tensp, img, gia, soluong, mausac, size, mota, idbrand);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public List<Product> selectLastProduct() {
        List<Product> listProduct = new ArrayList<>();
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(SELECT_LASTEST_PRODUCT);
            ResultSet rs = pS.executeQuery();
            while(rs.next()) {
                int idsp = rs.getInt(1);
                String tensp = rs.getString(2);
                String img = rs.getString(3);
                int gia = rs.getInt(4);
                int soluong = rs.getInt(5);
                String mausac = rs.getString(6);
                String size = rs.getString(7);
                String mota = rs.getString(8);
                int idbrand = rs.getInt(9);
                listProduct.add(new Product(idsp, tensp, img, gia, soluong, mausac, size, mota, idbrand));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listProduct;
    }

    public List<Product> selectHotProduct() {
        List<Product> listProduct = new ArrayList<>();
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(SELECT_HOTTEST_PRODUCT);
            ResultSet rs = pS.executeQuery();
            while(rs.next()) {
                int idsp = rs.getInt(1);
                String tensp = rs.getString(2);
                String img = rs.getString(3);
                int gia = rs.getInt(4);
                int soluong = rs.getInt(5);
                String mausac = rs.getString(6);
                String size = rs.getString(7);
                String mota = rs.getString(8);
                int idbrand = rs.getInt(9);
                listProduct.add(new Product(idsp, tensp, img, gia, soluong, mausac, size, mota, idbrand));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listProduct;
    }

    public List<Brand> selectAllBrand() {
        List<Brand> listBrand = new ArrayList<>();
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(SELECT_ALL_BRAND);
            ResultSet rs = pS.executeQuery();
            while(rs.next()) {
                int idbrand = rs.getInt(1);
                String tenbrand = rs.getString(2);
                listBrand.add(new Brand(idbrand, tenbrand));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listBrand;
    }

}
