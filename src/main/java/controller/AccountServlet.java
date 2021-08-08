package controller;

import model.Account;
import service.AccService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = {"/account"})
public class AccountServlet extends HttpServlet {

    AccService accService = new AccService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        RequestDispatcher dispatcher;
        if (action == null){
            action ="";
        }
        switch (action){
            case "show":
                req.setAttribute("ListAccount",accService.list);
                dispatcher = req.getRequestDispatcher("view/ShowAccount.jsp");
                dispatcher.forward(req,resp);
                break;
            case "edit":
                int indexEdit = Integer.parseInt(req.getParameter("index"));
                req.setAttribute("account",accService.list.get(indexEdit));
                dispatcher = req.getRequestDispatcher("view/EditAccount.jsp");
                dispatcher.forward(req,resp);
                break;
            case "delete":
                int index = Integer.parseInt(req.getParameter("index"));
                try {
                    accService.delete(index);
                } catch (SQLException sqlException) {
                    sqlException.printStackTrace();
                }
                resp.sendRedirect("/account");
                break;
            default:
                req.setAttribute("ListAccount",accService.list);
                dispatcher = req.getRequestDispatcher("view/ShowAccount.jsp");
                dispatcher.forward(req,resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        RequestDispatcher dispatcher;

        switch (action){
            case "edit":
                int idtk = Integer.parseInt(req.getParameter("idtk"));
                String username = req.getParameter("username");
                String password = req.getParameter("password");
                String email = req.getParameter("email");
                String address = req.getParameter("address");
                int loaiTK = 0;

                if(password==""||email==""||address==""){
                    req.setAttribute("checknull4", true );
                    dispatcher = req.getRequestDispatcher("view/EditAccount.jsp");
                    dispatcher.forward(req,resp);
                } else {
                    Account account1 = new Account(idtk, username, password, email, address, loaiTK);
                    int index = Integer.parseInt(req.getParameter("index"));
                    try {
                        accService.edit(account1, index);
                    } catch (SQLException throwables) {
                        throwables.printStackTrace();
                    }
                    req.setAttribute("ListAccount", accService.list);
                    dispatcher = req.getRequestDispatcher("view/ShowAccount.jsp");
                    dispatcher.forward(req, resp);
                }
                break;

        }
    }
}
