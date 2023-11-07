package br.com.petmatch.servlet;

import br.com.petmatch.dao.UserDao;
import br.com.petmatch.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateUser")
public class UpdateUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String nome = req.getParameter("nome");
        String cidade = req.getParameter("cidade");
        String bairro = req.getParameter("bairro");
        String foto = req.getParameter("foto");
        String telefone = req.getParameter("telefone");

        User usuario = new User(email, nome, foto, telefone, bairro, cidade);
        System.out.println("na SERVLET");
        System.out.println(usuario);
        new UserDao().updateUser(usuario);

    }
}
