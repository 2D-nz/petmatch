package br.com.petmatch.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import br.com.petmatch.config.ConnectionPoolConfig;
import br.com.petmatch.model.PetLocation;

public class PetLocationDAO {

    // Método para inserir coordenadas na tabela "PetLocation"
    public boolean inserirCoordenadas(PetLocation petLocation) {
        String SQL = "INSERT INTO PetLocation (PETID, LATITUDE, LONGITUDE) VALUES (?, ?, ?)";
        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setInt(1, petLocation.getPetId());
            preparedStatement.setString(2, petLocation.getLatitude());
            preparedStatement.setString(3, petLocation.getLongitude());

            int rowsAffected = preparedStatement.executeUpdate();

            // Verifica se a inserção deu certo
            if (rowsAffected > 0) {
                connection.close();
                System.out.println("Sucesso na inserção");
                return true;
            } else {
                connection.close();
                return false;
            }
        } catch (Exception e) {
            System.out.println("Erro ao inserir coordenadas: " + e.getMessage());
            return false;
        }
    }

    // Método para recuperar coordenadas de um pet por ID
    public PetLocation getCoordenadasByPetId(int petId) {
        String SQL = "SELECT LATITUDE, LONGITUDE FROM PetLocation WHERE PETID = ?";
        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setInt(1, petId);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String latitude = resultSet.getString("LATITUDE");
                String longitude = resultSet.getString("LONGITUDE");
                connection.close();
                return new PetLocation(petId, latitude, longitude);
            } else {
                connection.close();
                return null; // Nenhum resultado encontrado
            }
        } catch (Exception e) {
            System.out.println("Erro ao recuperar coordenadas: " + e.getMessage());
            return null;
        }
    }
}
