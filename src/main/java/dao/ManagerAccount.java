package dao;

import model.Account;
import model.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ManagerAccount {
        static DAO dao = new DAO();
        static Connection connection;
        static ArrayList<Account> list = new ArrayList<>();
        static {
            connection = dao.getConnection();
        }

    public static   ArrayList<Account> select() throws SQLException {
        String select = "select * from account where loaitk = 0";
        Statement statement = connection.createStatement();
        ArrayList<Account> list = new ArrayList<>();
        ResultSet resultSet = statement.executeQuery(select);

        while(resultSet.next()){
            int idtk = Integer.parseInt(resultSet.getString("idtk"));
            String username = resultSet.getString("username");
            String password = resultSet.getString("password");
            String email = resultSet.getString("email");
            String address = resultSet.getString("address");
            int loaiTk = Integer.parseInt(resultSet.getString(("loaiTk")));

            list.add(new Account(idtk,username,password,email,address,loaiTk));
        }
        return list;

    }
}
