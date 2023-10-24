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
                String especie = resultSet.getString("especie");
                String situacao = resultSet.getString("situacao");
                String genero = resultSet.getString("genero");
                String nome = resultSet.getString("nome");
                String raca = resultSet.getString("raca");
                String cor = resultSet.getString("cor");
                String cordosolhos = resultSet.getString("cordosolhos");

                Pet pet = new Pet(petId,situacao,especie,genero,nome,raca,cor,cordosolhos);

                pets.add(pet);
            }
            System.out.println("success in select");

            connection.close();

            return pets;

        } catch (Exception e) {

            System.out.println("Error" + e.getMessage());

            return Collections.emptyList();

        }
    }

    public void updatePet(Pet pet) {

        String SQL = "UPDATE PET SET SITUACAO = ?, ESPECIE = ?, GENERO = ?, NOME = ?, RACA = ?, COR = ?, CORDOSOLHOS = ? WHERE ID = ?";


        try {

        Connection connection = ConnectionPoolConfig.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement(SQL);

        preparedStatement.setString(1, pet.getSituacao());
        preparedStatement.setString(2, pet.getEspecie());
        preparedStatement.setString(3, pet.getGenero());
        preparedStatement.setString(4, pet.getNome());
        preparedStatement.setString(5, pet.getRaca());
        preparedStatement.setString(6, pet.getCor());
        preparedStatement.setString(7, pet.getCordosolhos());
        preparedStatement.setString(8, pet.getId());
        preparedStatement.execute();

        System.out.println("success in update");

        connection.close();

    } catch (Exception e) {

        System.out.println("Error" + e.getMessage());

    }
    }
    public void deletePetbyId(String petId){
        String SQL = "DELETE PET WHERE ID= ? ";

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
