package model.repository;

import model.Bean.User;

import java.util.List;

public interface UserRepository {
    List<User> findByAll();
    User findById(int id);
    void update(int id, User user);
    boolean addUser(User user);
    void remove(int id);
    List<User>sort();
    List<User>searchByCountry(String country);
}
