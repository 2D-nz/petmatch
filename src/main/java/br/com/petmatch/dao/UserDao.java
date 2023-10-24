package br.com.petmatch.dao;

import br.com.petmatch.config.ConnectionPoolConfig;
import br.com.petmatch.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    public boolean verifyCredentials(User user) {

        String SQL = "SELECT * FROM USR WHERE EMAIL = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getEmail());

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("success in select email");

            while (resultSet.next()) {

                String password = resultSet.getString("password");

                if (password.equals(user.getPassword())) {

                    return true;

                }
            }

            connection.close();

            return false;

        } catch (Exception e) {

            System.out.println("Error" + e.getMessage());

            return false;
        }

    }

    // METODO PARA CADASTRAR USUÁRIO
    public void registerUserWithConfirmation(User user) {

        String insertSQL = "INSERT INTO USR (EMAIL,PASSWORD) VALUES (?,?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);

            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());

            preparedStatement.executeUpdate();

            System.out.println("success in insert command");

            connection.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    // Metodo para receber dados do usuário
    public void getUsuario(User user) {
        String insertSQL = "INSERT INTO USR (EMAIL,PASSWORD) VALUES (?,?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);

            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());

            preparedStatement.executeUpdate();

            System.out.println("success in insert command");

            connection.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
