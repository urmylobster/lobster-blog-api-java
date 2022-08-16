package com.lobster.tobebraverman.service;

import com.lobster.tobebraverman.entity.User;

import java.util.List;

public interface UserService {

    User getUser(Integer id);

    List<User> getAll();

    User getUserByName(String name);

    User getUser(Integer id, String name);

}
