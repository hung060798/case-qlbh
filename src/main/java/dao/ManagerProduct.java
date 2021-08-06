package dao;

import model.Product;

import java.sql.*;
import java.util.ArrayList;

public class ManagerProduct {
    static DAO dao = new DAO();
    static Connection connection;
    static ArrayList<Product> list = new ArrayList<>();
    static {
        connection = dao.getConnection();
    }

    public static   ArrayList<Product> select() throws SQLException {
        String select = "select * from product";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(select);

        while(resultSet.next()){
//
            int idsp = Integer.parseInt(resultSet.getString("idsp"));
            String tensp = resultSet.getString("tensp");
            String img = resultSet.getString("img");
            int gia = Integer.parseInt(resultSet.getString("gia"));
            int soluong = Integer.parseInt(resultSet.getString("soluong"));
            String mausac = resultSet.getString("mausac");
            String size = resultSet.getString("size");
            String mota = resultSet.getString("mota");
            int idbrand = Integer.parseInt(resultSet.getString("idbrand"));

            list.add(new Product(idsp, tensp, img,gia,soluong,mausac,size, mota,idbrand));

        }
        return  list;
    }

    public static void create(Product product) throws SQLException{
        String create = "insert into product value(?,?,?,?,?,?,?,?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(create);
        preparedStatement.setInt(1,product.getIdsp());
        preparedStatement.setString(2,product.getTensp());
        preparedStatement.setString(3,product.getImg());
        preparedStatement.setInt(4,product.getGia());
        preparedStatement.setInt(5,product.getSoluong());
        preparedStatement.setString(6,product.getMausac());
        preparedStatement.setString(7,product.getSize());
        preparedStatement.setString(8,product.getMota());
        preparedStatement.setInt(9,product.getIdbrand());

        preparedStatement.execute();
    }

    public static void edit(Product product) throws SQLException{
        String edit = "update product set tensp =?, img =?, gia =?, soluong =?, mausac =?, size =?, mota=?, idbrand=? where idsp= ?";
        PreparedStatement preparedStatement = connection.prepareStatement(edit);
        preparedStatement.setString(1,product.getTensp());
        preparedStatement.setString(2,product.getImg());
        preparedStatement.setInt(3,product.getGia());
        preparedStatement.setInt(4,product.getSoluong());
        preparedStatement.setString(5,product.getMausac());
        preparedStatement.setString(6,product.getSize());
        preparedStatement.setString(7,product.getMota());
        preparedStatement.setInt(8,product.getIdbrand());
        preparedStatement.setInt(9,product.getIdsp());

        preparedStatement.execute();
    }

    public static void delete(int idsp) throws SQLException{
        String delete = "delete from product where idsp =?";
        PreparedStatement preparedStatement = connection.prepareStatement(delete);
        preparedStatement.setInt(1, idsp);
        preparedStatement.execute();
    }

    public static ArrayList<Product> findByName(String findName) throws SQLException{
        ArrayList<Product> findList = new ArrayList<>();
        String edit = "select * from product where name like '%' + findName + '%'";
        PreparedStatement preparedStatement = connection.prepareStatement(edit);
        ResultSet resultSet = preparedStatement.executeQuery();

        while (resultSet.next()){
            int idsp = Integer.parseInt(resultSet.getString("idsp"));
            String tensp = resultSet.getString("tensp");
            String img = resultSet.getString("img");
            int gia = Integer.parseInt(resultSet.getString("gia"));
            int soluong = Integer.parseInt(resultSet.getString("soluong"));
            String mausac = resultSet.getString("mausac");
            String size = resultSet.getString("size");
            String mota = resultSet.getString("mota");
            int idbrand = Integer.parseInt(resultSet.getString("idbrand"));

            findList.add(new Product(idsp, tensp, img,gia,soluong,mausac,size, mota,idbrand));
        }
        return findList;
    }

}
