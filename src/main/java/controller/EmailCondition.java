package controller;

import model.Account;
import service.AccService;

public class EmailCondition extends Exception{
   static AccService accService = new AccService();
    @Override
    public String getMessage(){
        return "Sai định dạng";
    }
    public static boolean checkEmail(String email){
        String str1="^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$";
        if(email.matches(str1)){
            return true;
        }else return false;
    }
}
