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

    @WebServlet("/details-pet")
    public class DetailsPetServlet extends HttpServlet{


        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String petId = req.getParameter("id");

            System.out.println(petId);
            List<Pet> DetailsPet = new PetDao().DetailsPets(Integer.parseInt(petId));
            req.setAttribute("pets", DetailsPet);
            req.getRequestDispatcher("pet-post/index.jsp").forward(req, resp);
        }
    }


