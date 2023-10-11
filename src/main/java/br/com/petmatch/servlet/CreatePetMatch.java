package br.com.petmatch.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-pet")
public class CreatePetMatch extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String petName = req.getParameter("pet-name");

        System.out.println(petName);

        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}
