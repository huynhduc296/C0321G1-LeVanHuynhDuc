package model.service;

import model.Bean.User;
import model.repository.UserRepository;
import model.repository.UserRepositoryImpl;

import java.util.List;

public class UserServiceImpl implements UserService {
    UserRepository userRepository=new UserRepositoryImpl();
    @Override
    public List<User> findByAll() {
        return userRepository.findByAll();
    }

    @Override
    public User findById(int id) {
        return userRepository.findById(id);
    }

    @Override
    public void update(int id, User user) {
        userRepository.update(id,user);
    }

    @Override
    public boolean addUser(User user) {
        return userRepository.addUser(user);
    }

    @Override
    public void remove(int id) {
        userRepository.remove(id);
    }

    @Override
    public List<User> sort() {
        return userRepository.sort();
    }

    @Override
    public List<User> searchByCountry(String county) {
        return userRepository.searchByCountry(county);
    }
}
