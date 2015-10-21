package com.galagan.note.service;

import com.galagan.note.domain.User;
import org.springframework.security.access.annotation.Secured;

import java.sql.SQLException;
import java.util.List;

@Secured("ROLE_ADMIN")
public interface UserService {

    void save(User user);

    void delete(User user);

    User get(User user);

    List<User> getAll();

    void update(User user);

}
