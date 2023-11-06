package br.com.petmatch.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import br.com.petmatch.config.ConnectionPoolConfig;
import br.com.petmatch.model.PetLocation;

public class PetLocationDAO {

    // Método para inserir coordenadas na tabela "PetLocation"
    public boolean inserirCoordenadas(PetLocation petLocation) {
        String SQL = "INSERT INTO PetLocation (pet_id, latitude, longitude) VALUES (?, ?, ?)";
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
                System.out.println("success in insert");
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
}
