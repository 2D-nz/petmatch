package br.com.petmatch.dao;

import br.com.petmatch.config.ConnectionPoolConfig;
import br.com.petmatch.model.Pet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PetDao {

    public int createPet(Pet pet) {
        String SQL = "INSERT INTO PET (SITUACAO, ESPECIE, GENERO) VALUES (?,?,?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL, PreparedStatement.RETURN_GENERATED_KEYS);

            preparedStatement.setString(1, pet.getSituacao());
            preparedStatement.setString(2, pet.getEspecie());
            preparedStatement.setString(3, pet.getGenero());
            preparedStatement.execute();

            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            int newPetId = -1;
            if (generatedKeys.next()) {
                newPetId = generatedKeys.getInt(1);
            }

            System.out.println("success in insert, new ID: " + newPetId);

            connection.close();

            return newPetId;
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            return -1;
        }
    }


    public List<Pet> findAllPets() {

        String SQL = "SELECT * FROM PET";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Pet> pets = new ArrayList<>();

            while (resultSet.next()) {

                String petId = resultSet.getString("id");
                String nome = resultSet.getString("nome");
                String image = resultSet.getString("image");

                Pet pet = new Pet(petId,nome,image);

                pets.add(pet);
            }
            System.out.println("success in select");

            connection.close();

            return pets;

        } catch (Exception e) {

            System.out.println("Error" + e.getMessage());
            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public void updatePet(Pet pet, String page) {

        String SQL;

        if ("3".equals(page)) {
            SQL = "UPDATE PET SET NOME = ?, RACA = ?, COR = ?, CORDOSOLHOS = ? WHERE ID = ?";
        } else if ("4".equals(page)) {
            SQL = "UPDATE PET SET MENSAGEM = ?, DESCRICAO = ? WHERE ID = ?";
        } else if ("5".equals(page)) {
            SQL = "UPDATE PET SET IMAGE = ? WHERE ID = ?";
        } else if ("6".equals(page)) {
            SQL = "UPDATE PET SET DATA_DESAPARECIMENTO = ?, ENDERECO = ?, WHATSAPP = ? WHERE ID = ?";
        } else {
            //PENSAR EM ALGUM RETORNO SE ACABAR A PAGINA
            return;
        }



        try {
        Connection connection = ConnectionPoolConfig.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            if ("3".equals(page)) {
                preparedStatement.setString(1, pet.getNome());
                preparedStatement.setString(2, pet.getRaca());
                preparedStatement.setString(3, pet.getCor());
                preparedStatement.setString(4, pet.getCordosolhos());
                preparedStatement.setString(5, pet.getId());
            } else if ("4".equals(page)) {
                System.out.println("caiu na mensagem po");
                preparedStatement.setString(1, pet.getMensagem());
                preparedStatement.setString(2, pet.getDescricao());
                preparedStatement.setString(3, pet.getId());
            } else if ("5".equals(page)) {
                preparedStatement.setString(1, pet.getImage());
                preparedStatement.setString(2, pet.getId());
            } else if ("6".equals(page)) {
                System.out.println("entrou aqui 6");
                preparedStatement.setString(1, pet.getData());
                preparedStatement.setString(2, pet.getEndereco());
                preparedStatement.setString(3, pet.getTelefone());
                preparedStatement.setString(4, pet.getId());
            }

            preparedStatement.execute();


        System.out.println("success in update");

        connection.close();

    } catch (Exception e) {

        System.out.println("Error" + e.getMessage());

    }
    }
    public void deletePetbyId(String petId){
        String SQL = "DELETE FROM PET WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, petId);
            preparedStatement.execute();

            System.out.println("success in delete pet with id " + petId);

            connection.close();

        } catch (Exception e) {

            System.out.println("Error" + e.getMessage());

        }
    }
}
