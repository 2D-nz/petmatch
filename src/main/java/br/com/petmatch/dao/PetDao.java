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

    public void createPet(Pet pet) {

        String SQL = "INSERT INTO PET (SITUACAO, ESPECIE, GENERO) VALUES (?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getSituacao());
            preparedStatement.setString(2, pet.getEspecie());
            preparedStatement.setString(3, pet.getGenero());
            preparedStatement.execute();

            System.out.println("success in insert");

            connection.close();

        } catch (Exception e) {

            System.out.println("Error" + e.getMessage());

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

                Pet pet = new Pet(petId, especie, situacao, genero);

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

        String SQL = "UPDATE PET SET SITUACAO = ?, ESPECIE = ?, GENERO = ? WHERE ID = ?";


        try {

        Connection connection = ConnectionPoolConfig.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement(SQL);

        preparedStatement.setString(1, pet.getSituacao());
        preparedStatement.setString(2, pet.getEspecie());
        preparedStatement.setString(3, pet.getGenero());
        preparedStatement.setString(4, pet.getId());
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
