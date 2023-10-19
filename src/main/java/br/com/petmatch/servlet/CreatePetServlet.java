package br.com.petmatch.servlet;

import br.com.petmatch.dao.PetDao;
import br.com.petmatch.model.Pet;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.apache.commons.fileupload.servlet.ServletFileUpload.isMultipartContent;

@WebServlet("/create-pet")
public class CreatePetServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String petId = req.getParameter("id");
        String situacao = req.getParameter("situacao");
        String especie = req.getParameter("especie");
        String genero = req.getParameter("genero");


        Pet pet = new Pet(petId,situacao,especie,genero);

        PetDao petDao = new PetDao();

        if(petId.isBlank()){
            petDao.createPet(pet);
        }else{
            petDao.updatePet(pet);
        }

        resp.sendRedirect("/find-all-pets");
//        resp.sendRedirect("/telasAnuncio/TelaAnuncio2/index.jsp");

    }





    //Upload da imagem do pet
    private Map<String, String> uploadImage(HttpServletRequest httpServletRequest) {

        Map<String, String> parameters = new HashMap<>();

        if (isMultipartContent(httpServletRequest)) {
            try {
                DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
                List<FileItem> fileItens = new ServletFileUpload(diskFileItemFactory).parseRequest(httpServletRequest);

                for (FileItem item : fileItens) {
                    checkFieldType(item, parameters);
                }

            } catch (Exception e) {
                parameters.put("image", "img/default.jpg");

            }
            return parameters;
        }
        return parameters;
    }

    private void checkFieldType(FileItem item, Map requestParameters) throws Exception {
        if (item.isFormField()) {
            requestParameters.put(item.getFieldName(), item.getString());
        } else {
            String fileName = processUploadFile(item);
            requestParameters.put("image", "img/".concat(fileName));
        }
    }

    private String processUploadFile(FileItem fileItem) throws Exception {
        Long currentTime = new Date().getTime();
        String fileName = currentTime.toString().concat("-").concat(fileItem.getName().replace(" ", ""));
        String filePath = this.getServletContext().getRealPath("img").concat(File.separator).concat(fileName);
        fileItem.write(new File(filePath));
        return fileName;
    }
}
