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

@WebServlet("/Found-All-Pets")
public class FoundAllPetsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String petName = req.getParameter("petNome");

        List<Pet> foundAllPets = new PetDao().findPetsByName(petName);
        System.out.println(foundAllPets);
        req.setAttribute("pets", foundAllPets);
        req.getRequestDispatcher("/found-page/index.jsp").forward(req, resp);
    }
}

