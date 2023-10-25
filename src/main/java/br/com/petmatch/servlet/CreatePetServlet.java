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

        Map<String, String> parameters = uploadImage(req);

        String petId = parameters.get("id");
        String situacao = parameters.get("situacao");
        String especie = parameters.get("especie");
        String genero = parameters.get("genero");
        String nome = parameters.get("nome");
        String raca = parameters.get("raca");
        String cor = parameters.get("cor");
        String cordosolhos = parameters.get("cordosolhos");
        String mensagem = parameters.get("mensagem");
        String descricao = parameters.get("descricao");
        String image = parameters.get("image");
        String data = parameters.get("data");
        String endereco = parameters.get("endereco");
        String telefone = parameters.get("telefone");
        //Não faz parte do pet
        String page = parameters.get("page");

        PetDao petDao = new PetDao();

        Pet pet = new Pet(petId,situacao,especie,genero,nome,raca,cor,cordosolhos,mensagem,descricao,image,data,endereco,telefone);


        int petIdNew;
        if (petId.isBlank()) {
            petIdNew = petDao.createPet(pet);
            System.out.println(petIdNew);
        } else {
            petIdNew = Integer.parseInt(petId);
            petDao.updatePet(pet,page);
        }

        String pageName = "TelaAnuncio" + page;
        String teste = String.format("telasAnuncio/%s/index.jsp?id=%s",pageName,petIdNew);

        resp.sendRedirect(teste);
    }

    //Upload da imagem do pet
    private Map<String, String> uploadImage(HttpServletRequest httpServletRequest) {

        Map<String, String> parameters = new HashMap<>();

        if (isMultipartContent(httpServletRequest)) {
            try {
                DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
                List<FileItem> fileItems = new ServletFileUpload(diskFileItemFactory).parseRequest(httpServletRequest);

                for (FileItem item : fileItems) {
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
