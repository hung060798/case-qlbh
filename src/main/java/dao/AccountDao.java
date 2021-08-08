package dao;

import model.Account;
import model.Product;

import java.sql.*;
import java.util.ArrayList;

public class AccountDao {
    static DAO dao = new DAO();
    static Connection connection;
    static ArrayList<Account> list = new ArrayList<>();
    static {
        connection = dao.getConnection();
    }
    public static   ArrayList<Account> select() throws SQLException {
        String select = "select * from account where loaiTK =0";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(select);

        while (resultSet.next()) {
            int idtk = Integer.parseInt(resultSet.getString("idtk"));
            String username = resultSet.getString("username");
            String password = resultSet.getString("password");
            String email = resultSet.getString("email");
            String address = resultSet.getString("address");
            int loaiTK = resultSet.getInt("loaiTk");
            list.add(new Account(idtk, username, password, email, address, loaiTK));
        }
        return list;
    }

    public static void edit(Account account) throws SQLException {
        String edit = "update account set password =?, email=?, address=? where username =?";
        PreparedStatement preparedStatement = connection.prepareStatement(edit);
        preparedStatement.setString(1, account.getPassword());
        preparedStatement.setString(2, account.getEmail());
        preparedStatement.setString(3, account.getAddress());
        preparedStatement.setString(4, account.getUsername());

        preparedStatement.execute();
    }

    public static void delete(int idtk) throws SQLException{
        String delete = "delete from account where idtk =?";
        PreparedStatement preparedStatement = connection.prepareStatement(delete);
        preparedStatement.setInt(1, idtk);
        preparedStatement.execute();
    }

}
