package br.com.petmatch.servlet;

import br.com.petmatch.dao.PetDao;
import br.com.petmatch.dao.PetLocationDAO;
import br.com.petmatch.model.Pet;
import br.com.petmatch.model.PetLocation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/details-pet")
public class DetailsPetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String petId = req.getParameter("id");

        List<Pet> detailsPet = new PetDao().DetailsPets(Integer.parseInt(petId));

        // Recupere as coordenadas do pet usando o DAO de localização
        PetLocationDAO locationDAO = new PetLocationDAO();
        PetLocation petLocation = locationDAO.getCoordenadasByPetId(Integer.parseInt(petId));

        if (petLocation != null) {
            String latitude = petLocation.getLatitude();
            String longitude = petLocation.getLongitude();
            req.setAttribute("latitude", latitude);
            req.setAttribute("longitude", longitude);
        }

        req.setAttribute("pets", detailsPet);
        req.getRequestDispatcher("pet-post/index.jsp").forward(req, resp);
    }
}



