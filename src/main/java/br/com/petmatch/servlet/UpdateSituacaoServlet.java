package br.com.petmatch.servlet;

import br.com.petmatch.dao.PetDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateSituacao")
public class UpdateSituacaoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String status = request.getParameter("status");
        String id = request.getParameter("id");

        PetDao petDao = new PetDao();


        request.getRequestDispatcher("found-page/index.jsp").forward(request, response);

        }
    }
