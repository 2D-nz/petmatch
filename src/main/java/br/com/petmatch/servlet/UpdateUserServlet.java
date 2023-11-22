package br.com.petmatch.servlet;

import br.com.petmatch.dao.UserDao;
import br.com.petmatch.model.User;
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

@WebServlet("/updateUser")
public class UpdateUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        Map<String, String> parameters = uploadImage(req);

        String id = parameters.get("id");
        String email = parameters.get("email");
        String nome = parameters.get("nome");
        String cidade = parameters.get("cidade");
        String bairro = parameters.get("bairro");
        String image = parameters.get("image");
        String telefone = parameters.get("telefone");

        User usuario = new User(id,email, nome, image, telefone, bairro, cidade);
        System.out.println(nome);
        new UserDao().updateUser(usuario);
        User usernew = new UserDao().getUsuario(email);
        req.getSession().setAttribute("loggedUser", usernew);

        resp.sendRedirect("/edit_profile-page/index.jsp");

    }


    //Upload da imagem do pet
    private Map<String, String> uploadImage(HttpServletRequest httpServletRequest) {

        HashMap<String, String> parameters = new HashMap<>();

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
