package model.repository;

import model.User;
import model.service.UserService;
import model.service.impl.UserServiceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {
    BaseRepository baseRepository=new BaseRepository();
    final String SELECT_ALL_STUDENT ="select* from user;";
    UserService userService=new UserServiceImpl();

    public List<User>findByAll() {
        Connection connection=baseRepository.connectDataBase();
        List<User>userList=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(SELECT_ALL_STUDENT);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int id=resultSet.getInt("id");
                String name=resultSet.getString("name");
                String email=resultSet.getString("email");
                String country=resultSet.getString("country");
                User user=new User(id,name,email,country);
                userList.add(user);
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }
}
