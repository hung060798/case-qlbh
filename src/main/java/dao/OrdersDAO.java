package dao;

import model.Item;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrdersDAO {
    private DAO dao;

    public OrdersDAO() {
        dao = new DAO();
    }

    public void insertOrders(int idtk, int tonggia, Date ngaymua) {
        String INSERT_ORDER = "insert into Orders(idtk, tonggia, ngaymua) values (?, ?, ?)";
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(INSERT_ORDER);
            pS.setInt(1, idtk);
            pS.setInt(2, tonggia);
            pS.setDate(3, ngaymua);
            pS.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void insertOrdersDetail(int idhd, Item item) {
        String INSERT_ORDER_DETAILS = "insert into OrdersDetail(idhd, idsp, soluongmua, danhgia, binhluan) values (?, ?, ?, ?, ?)";
        try {
            PreparedStatement pS = dao.getConnection().prepareStatement(INSERT_ORDER_DETAILS);
            pS.setInt(1, idhd);
            pS.setInt(2, item.getIditem());
            pS.setInt(3, item.getSoluongmua());
            pS.setInt(4, item.getDanhgia());
            pS.setString(5, item.getBinhluan());
            pS.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
