package br.com.petmatch.dao;

import br.com.petmatch.config.ConnectionPoolConfig;
import br.com.petmatch.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    public boolean verifyCredentials(User user) {

        String SQL = "SELECT * FROM USR WHERE EMAIL = ?";

        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1,user.getEmail());

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("success in select email");

            while(resultSet.next()){

                String password = resultSet.getString("password");

                if(password.equals(user.getPassword())){

                    return true;

                }
            }

            connection.close();

            return false;

        }catch(Exception e) {

            System.out.println("Error" + e.getMessage());

            return false;
        }

    }
}
