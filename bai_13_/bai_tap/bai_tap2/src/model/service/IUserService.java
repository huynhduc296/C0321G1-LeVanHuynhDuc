package model.service;

import model.bean.User;

import java.util.List;

public interface IUserService {
    List<User> findByAll();
    User findById(int id);
    boolean update(int id, User user);
    boolean add(User user);
    boolean remove(int id);
    List<User> searchByCountry(String country);
    public void insertUpdateUseTransaction();
}
