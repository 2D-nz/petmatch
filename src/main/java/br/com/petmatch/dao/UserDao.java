package br.com.petmatch.dao;

import br.com.petmatch.config.ConnectionPoolConfig;
import br.com.petmatch.model.Pet;
import br.com.petmatch.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;

public class UserDao {

    public boolean verifyCredentials(User user) {

        String SQL = "SELECT * FROM USR WHERE EMAIL = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getEmail());

            ResultSet resultSet = preparedStatement.executeQuery();

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

        String insertSQL = "INSERT INTO USR (EMAIL, PASSWORD, LOGIN, TELEFONE, CIDADE, BAIRRO, FOTO) VALUES (?,?,?, ?, ?, ?, ?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);

            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getNome());
            preparedStatement.setString(4, "");
            preparedStatement.setString(5, "");
            preparedStatement.setString(6, "");
            preparedStatement.setString(7, "");

            preparedStatement.executeUpdate();

            System.out.println("success in insert command");

            connection.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    // Metodo para receber dados do usuário
    public User getUsuario(String email) {
        String insertSQL = "SELECT * FROM USR WHERE EMAIL = (?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);

            User usuario = new User(email);

            preparedStatement.setString(1, email);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                usuario.setId(resultSet.getString("id"));
                usuario.setNome(resultSet.getString("login"));
                usuario.setTelefone(resultSet.getString("telefone"));
                usuario.setFoto(resultSet.getString("foto"));
                usuario.setBairro(resultSet.getString("bairro"));
                usuario.setCidade(resultSet.getString("cidade"));

            }

            System.out.println(resultSet.toString());

            connection.close();
            System.out.println(usuario.toString());
            System.out.println(usuario.getNome());
            System.out.println(usuario.getCidade());
            return usuario;

        } catch (Exception e) {
            System.out.println("Erro aqui");
            System.out.println("Error: " + e.getMessage());
            return null;
        }
    }

    public void updateUser(User user) {
        String insertSQL = "Update USR SET telefone = (?), bairro = (?), cidade = (?) WHERE email = (?)";
        System.out.println(user);
        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);

            preparedStatement.setString(1, user.getTelefone());
            preparedStatement.setString(2, user.getBairro());
            preparedStatement.setString(3, user.getCidade());
            preparedStatement.setString(4, user.getEmail());

            preparedStatement.executeUpdate();

            System.out.println("success in insert command");

            connection.close();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
