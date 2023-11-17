package br.com.petmatch.servlet;

import br.com.petmatch.dao.PetDao;
import br.com.petmatch.model.Pet;
import br.com.petmatch.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/pets-by-user")
public class UserPetServlet extends HttpServlet{
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            int user_id=0;

            if (req.getSession().getAttribute("loggedUser") != null) {
                user_id = Integer.parseInt(((User) req.getSession().getAttribute("loggedUser")).getId());
                System.out.println(user_id);
            }

            List<Pet> userPets = new PetDao().PetDaobyUserId(user_id);
            req.setAttribute("pets", userPets);
            req.getRequestDispatcher("/your_pets-page/index.jsp").forward(req, resp);
        }
    }
