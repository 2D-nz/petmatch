package br.com.petmatch.servlet;

import br.com.petmatch.dao.PetDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-pet")
public class DeletePetServlet  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       String petId = req.getParameter("id");

       new PetDao().deletePetbyId(petId);

       resp.sendRedirect("find-all-pets");
    }
}
