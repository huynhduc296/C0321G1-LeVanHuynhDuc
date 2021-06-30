package model.repository;

import model.Bean.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl implements UserRepository {
    private final String FIND_ALL = "select * from users";

    private final String SELECT_USER_BY_ID=  ("update users\n" +
            "set `name` = ? , email = ? , country = ?\n" +
            "where id = ?");

    private final  String ADD_USER=("insert into users (`name`,email,country)\n" +
            "values (?,?,?)");

    private final String DELETE_USER=("delete from users\n" +
            "where id = ?");

    private final String SORT_NAME=("select *\n" +
            "from users\n" +
            "order by `name`");

    private final String SEARCH_BY_COUNTRY=("\n" +
            "select * from users\n" +
            "where country like ?;");

    private BaseRepository baseRepository =new BaseRepository();
    @Override
    public List<User> findByAll() {
        List<User> userList = new ArrayList<>();
        try{
            Statement statement = baseRepository.connectDataBase().createStatement();
            ResultSet resultSet = statement.executeQuery(FIND_ALL);
            User users ;
            while(resultSet.next()) {
                users = new User();
                users.setId(resultSet.getInt("id"));
                users.setName(resultSet.getString("name"));
                users.setEmail(resultSet.getString("email"));
                users.setCountry(resultSet.getString("country"));
                userList.add(users);
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }
    @Override
    public User findById(int id) {
        User user =new User();
        try {
            PreparedStatement preparedStatement=baseRepository.connectDataBase().prepareStatement(SELECT_USER_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet=preparedStatement.executeQuery();
        if(resultSet.next()){
            user.setId(id);
            user.setName(resultSet.getString("name"));
            user.setEmail(resultSet.getString("email"));
            user.setCountry(resultSet.getString("country"));
        }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }
    @Override
    public void update(int id, User user) {
           try {
               PreparedStatement preparedStatement=baseRepository.connectDataBase().prepareStatement(SELECT_USER_BY_ID);
               preparedStatement.setString(1,user.getName());
               preparedStatement.setString(2,user.getEmail());
               preparedStatement.setString(3,user.getCountry());
               preparedStatement.setInt(4,id);
               preparedStatement.executeUpdate();
           } catch (SQLException throwables) {
               throwables.printStackTrace();
           }
    }

    @Override
    public boolean addUser(User user) {
        try {
            PreparedStatement preparedStatement=baseRepository.connectDataBase().prepareStatement(ADD_USER);
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getCountry());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public void remove(int id) {
            try {
                PreparedStatement preparedStatement=this.baseRepository.connectDataBase().prepareStatement(DELETE_USER);
                preparedStatement.setString(1,String.valueOf(id));
                preparedStatement.executeUpdate();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
    }

    @Override
    public List<User> sort() {
        List<User>userList=new ArrayList<>();
        try {
            Statement statement=this.baseRepository.connectDataBase().createStatement();
            ResultSet resultSet=statement.executeQuery(SORT_NAME);
            User user=null;
            while (resultSet.next()){
                user=new User();
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
            return userList;
    }

    @Override
    public List<User> searchByCountry(String country) {
        List<User>list=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=this.baseRepository.connectDataBase().prepareStatement(SEARCH_BY_COUNTRY);
            preparedStatement.setString(1,"%"+country+"%");
            ResultSet resultSet=preparedStatement.executeQuery();
            User user=null;
            while (resultSet.next()){
                user=new User();
                user.setId(Integer.parseInt(resultSet.getString("id")));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
                list.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

}
