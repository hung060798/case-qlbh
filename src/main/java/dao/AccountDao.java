package dao;

import model.Account;
import model.Product;

import java.sql.*;
import java.util.ArrayList;

public class AccountDao {
    private DAO dao;
    public AccountDao() {
        dao = new DAO();
    }

    public ArrayList<Account> selectAllAccount(){
        ArrayList<Account> listAccount = new ArrayList<>();
        String select = "select * from account where loaiTK =0";
        try {
            Statement statement = dao.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(select);
            while (resultSet.next()) {
                int idtk = Integer.parseInt(resultSet.getString("idtk"));
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int loaiTK = resultSet.getInt("loaiTK");
                listAccount.add(new Account(idtk, username, password, email, address, loaiTK));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listAccount;
    }

    public void edit(Account account) {
        String edit = "update account set password =?, email=?, address=? where username =?";
        try {
            PreparedStatement preparedStatement = dao.getConnection().prepareStatement(edit);
            preparedStatement.setString(1, account.getPassword());
            preparedStatement.setString(2, account.getEmail());
            preparedStatement.setString(3, account.getAddress());
            preparedStatement.setString(4, account.getUsername());
            preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void delete(int idtk) {
        String delete = "delete from account where idtk =?";
        try {
            PreparedStatement preparedStatement = dao.getConnection().prepareStatement(delete);
            preparedStatement.setInt(1, idtk);
            preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Account selectAccountByID(int id) {
        String select = "select * from account where idtk = ?";
        try {
            PreparedStatement preparedStatement = dao.getConnection().prepareStatement(select);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("password");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int loaiTK = rs.getInt("loaiTK");
                return new Account(id, username, password, email, address, loaiTK);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

}
