package model.service.impl;

import model.User;
import model.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    UserService userService=new UserServiceImpl();
    @Override
    public List<User> findByAll() {
        return userService.findByAll();
    }
}
