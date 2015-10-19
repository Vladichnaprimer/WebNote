package com.galagan.note.dao;

import com.galagan.note.domain.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDao {

    void save(User user);

    void delete(User user);

    User get(User user);

    List<User> getAll();

    void update(User user);


}
