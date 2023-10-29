package br.com.petmatch.servlet;

import br.com.petmatch.dao.PetDao;
import br.com.petmatch.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/found-all-pets")
public class FoundPetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Pet> foundPets = new PetDao().FoundAllPets();
        req.setAttribute("pets", foundPets);
        req.getRequestDispatcher("found-page/index.jsp").forward(req, resp);
    }
}

