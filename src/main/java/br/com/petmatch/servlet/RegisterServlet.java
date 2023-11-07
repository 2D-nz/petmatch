package br.com.petmatch.servlet;

import br.com.petmatch.dao.UserDao;
import br.com.petmatch.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String nome = req.getParameter("nome");

        String password = req.getParameter("password");
        String passwordConfirm = req.getParameter("password-confirm");

        if (email != null && !email.isEmpty() && password != null && !password.isEmpty()
                && password.equals(passwordConfirm) && nome != null && !nome.isEmpty()) {
            // Senhas coincidem e não está null
            User user = new User(email, nome, password);
            System.out.println(user);
            new UserDao().registerUserWithConfirmation(user);
            System.out.println("senhas coincidem");
            System.out.println("oi");
            req.setAttribute("Registrado", "true");
            req.getRequestDispatcher("login-page/login.jsp").forward(req, resp);
        } else {
            // Senhas não coincidem
            req.setAttribute("error", "As senhas não coincidem");
            System.out.println("senhas não coincidem ou está vazia");
            req.getRequestDispatcher("/register-page/register.jsp").forward(req, resp);
        }
    }
}
