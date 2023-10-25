package br.com.petmatch.servlet;

import br.com.petmatch.dao.UserDao;
import br.com.petmatch.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = new User(email, password);

        boolean isValidUser = new UserDao().verifyCredentials(user);


        if(isValidUser) {
            req.getSession().setAttribute("loggedUser", email);

            resp.sendRedirect("/find-all-pets");
        }else {
            req.setAttribute( "message", "Invalid credentials!");

            req.getRequestDispatcher( "login-page/login.jsp").forward(req, resp);

        }
    }
}
