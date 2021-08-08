package service;

import dao.AccountDao;
import dao.DAO;
import dao.LoginDAO;
import dao.ManagerProduct;
import model.Account;
import model.Product;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class AccService {
    public ArrayList<Account> list=new ArrayList<>();
    public AccService() {
        try {
            list= AccountDao.select();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    public void add(Account tk) throws SQLException {
        LoginDAO.create(tk);
        list.add(tk);
    }

    public void delete(int index) throws SQLException {
        AccountDao.delete(list.get(index).getIdtk());
        list.remove(index);
    }

    public void edit(Account account, int index) throws SQLException {
        AccountDao.edit(account);
        list.set(index,account);
    }
    public boolean KtraAcc(String username1,String email1){
        for(Account x:list){
            if(username1.equals(x.getUsername())||email1.equals(x.getEmail())){
                return false;
            }
        }
        return true;
    }

}
