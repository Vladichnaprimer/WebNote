package com.galagan.note.service;

import com.galagan.note.dao.UserDao;
import com.galagan.note.dao.UserDaoImpl;
import com.galagan.note.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    @Transactional
    public void save(User user) {
        userDao.save(user);
    }

    public void delete(User user){
        userDao.delete(user);
    }

    public User get(User user){
        return userDao.get(user);
    }

    public List<User> getAll(){
        return userDao.getAll();
    }

    public void update(User user){
        userDao.update(user);
    }
}
