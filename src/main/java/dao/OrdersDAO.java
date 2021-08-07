package dao;

import model.Item;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrdersDAO {
    private DAO dao;

    public OrdersDAO() {
        dao = new DAO();
    }

    public boolean insertOrders(int idtk, int tonggia, Date ngaymua) {
        Boolean check = false;
        String INSERT_ORDER = "insert into Orders(idtk, tonggia, ngaymua) values (?, ?, ?)";
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(INSERT_ORDER);
            pS.setInt(1, idtk);
            pS.setInt(2, tonggia);
            pS.setDate(3, ngaymua);
            check = pS.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return check;
    }

    public boolean insertOrdersDetail(Item item, int danhgia, String binhluan) {
        boolean check = false;
        int lastID = 0;
        String SELECT_LAST_ID = "select idhd from Orders order by idhd desc limit 1";
        String INSERT_ORDER_DETAILS = "insert into OrdersDetail(idhd, idsp, soluongmua, danhgia, binhluan) values (?, ?, ?, ?, ?)";
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(SELECT_LAST_ID);
            ResultSet rs = pS.executeQuery();
            while(rs.next()) {
                lastID = rs.getInt("idhd");
            }
            pS = dao.getConnection().prepareStatement(INSERT_ORDER_DETAILS);
            pS.setInt(1, lastID);
            pS.setInt(2, item.getProduct().getIdsp());
            pS.setInt(3, item.getSoluongmua());
            pS.setInt(4, danhgia);
            pS.setString(5, binhluan);
            check = pS.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return check;
    }

//    public int getIDHDNew() {
//        int lastID = 0;
//        String SELECT_LAST_ID = "select idhd from Orders order by idhd desc limit 1";
//        try {
//            PreparedStatement pS = dao.getConnection().prepareStatement(SELECT_LAST_ID);
//            ResultSet rs = pS.executeQuery();
//            while(rs.next()) {
//                lastID = rs.getInt("idhd");
//            }
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        return (lastID + 1);
//    }

}
