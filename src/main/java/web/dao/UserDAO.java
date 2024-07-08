package web.dao;

import web.model.User;

import java.util.ArrayList;
import java.util.List;

public interface UserDAO {


    public List<User> allUsers();

    public void add(User user);

    public void delete(User user);

    public void edit(User user);

    public User getById(Long id);
}

