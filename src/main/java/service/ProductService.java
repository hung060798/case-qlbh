package service;

import dao.ManagerProduct;
import model.Product;

import java.sql.SQLException;
import java.util.ArrayList;

public class ProductService {
    public ArrayList<Product> list = new ArrayList<>();
    public ProductService(){
        try {
            list = ManagerProduct.select();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
    }
    public void add(Product product) throws SQLException {
        ManagerProduct.create(product);
        list.add(product);
    }
    public void edit(Product product, int index) throws SQLException {
        ManagerProduct.edit(product);
        list.set(index,product);
    }
    public void delete(int index) throws SQLException {
        ManagerProduct.delete(list.get(index).getIdsp());
        list.remove(index);
    }
    public ArrayList<Product> findByName(String name) throws SQLException {
        return  ManagerProduct.findByName(name);
    }
}
