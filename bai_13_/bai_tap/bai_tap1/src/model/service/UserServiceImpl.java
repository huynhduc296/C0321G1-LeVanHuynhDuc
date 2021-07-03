package model.service;

import model.bean.User;
import model.repository.UserRepository;

import java.util.List;

public class UserServiceImpl implements IUserService {
    UserRepository userRepository = new UserRepository();

    @Override
    public List<User> findByAll() {
        return userRepository.selectAllUsers();
    }

    @Override
    public User findById(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public boolean update(int id, User user) {
        return userRepository.updateUser(id,user);
    }

    @Override
    public boolean add(User user) {
        return userRepository.insertUser(user);
    }

    @Override
    public boolean remove(int id) {
        return userRepository.deleteUser(id);
    }
    public List<User> sortByName(){
        return userRepository.sortByName();
    }

    @Override
    public List<User> searchByCountry(String country) {
        return userRepository.searchByCountry(country);
    }

    @Override
    public void insertUpdateUseTransaction() {

    }

    public List<User> getAllUserByStore(){
        return userRepository.getAllUserByStore();
    }
    public boolean updateUserByStore(int id,User user){
        return userRepository.updateUserByStore(id,user);
    }
    public boolean deleteUserByStore(int id){
        return userRepository.deleteUserByStore(id);
    }
}
