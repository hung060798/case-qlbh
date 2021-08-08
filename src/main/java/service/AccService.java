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
        AccountDao accountDao = new AccountDao();
        list = accountDao.selectAllAccount();
    }
    public void add(Account tk) throws SQLException {
        LoginDAO.create(tk);
        list.add(tk);
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