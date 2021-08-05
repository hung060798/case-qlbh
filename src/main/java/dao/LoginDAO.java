package dao;

import model.Account;

import java.sql.*;
import java.util.ArrayList;

public class LoginDAO {
    static Connection connection;
    static DAO dao =new DAO();
    static ArrayList<Account> list = new ArrayList<>();

    static {
        connection = dao.getConnection();
    }

    public static ArrayList<Account> select() throws SQLException, ClassNotFoundException {
        String select = "select * from account";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(select);
        while (resultSet.next()) {
            String username = resultSet.getString("username");
            String password = resultSet.getString("password");
            String email = resultSet.getString("email");
            String address = resultSet.getString("address");
            int loaitk = Integer.parseInt(resultSet.getString("loaiTK"));
            list.add(new Account(username, password, email, address, loaitk));
        }
        return list;
    }

    public static Account login(String username, String password)  {
        String select = "select * from account where username =? and password=?";
       try{
        PreparedStatement preparedStatement = connection.prepareStatement(select);
           preparedStatement.setString(1,username);
           preparedStatement.setString(2,password);
        ResultSet resultSet = preparedStatement.executeQuery();
          while(resultSet.next()){
              return new Account(resultSet.getInt(1),
                      resultSet.getString(2),
                      resultSet.getString(3),
                      resultSet.getString(4),
                      resultSet.getString(5),
                      resultSet.getInt(6));
          }
        }catch (Exception e){
           e.printStackTrace();
       }
        return null;
    }
    public static Account login1(String email, String password)  {
        String select = "select * from account where email =? and password=?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(select);
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                return new Account(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getInt(6));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public static void create(Account tk) throws SQLException {
        String create = "insert into account(username,password,email,address,loaitk) value(?,?,?,?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(create);
        preparedStatement.setString(1, tk.getUsername());
        preparedStatement.setString(2, tk.getPassword());
        preparedStatement.setString(3, tk.getEmail());
        preparedStatement.setString(4, tk.getAddress());
        preparedStatement.setInt(5, tk.getLoaiTK());
        preparedStatement.execute();
    }
}
