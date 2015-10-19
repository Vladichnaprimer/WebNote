package com.galagan.note.dao;

import com.galagan.note.domain.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void save(User user){
        Session session  = sessionFactory.openSession();
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        if(session.isOpen())
             session.close();
    }

    public void delete(User user) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(user);
        session.getTransaction().commit();
        if(session.isOpen())
            session.close();


    }

    public User get(User user) {
        Session session = sessionFactory.openSession();
        List<User> users;
        Query query = session.createQuery("from User u where u.email = :email and u.password= :password");
        query.setParameter("email", user.getEmail());
        query.setParameter("password", user.getPassword());
        users = query.list();
        if(users.isEmpty()){
            return null;
        }
        return users.get(0);
    }

    public List<User> getAll() {
        Session session = sessionFactory.openSession();
        return session.createCriteria(User.class).list();

    }

    public void update(User user){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(user);
        session.getTransaction().commit();
        if(session.isOpen())
            session.close();



    }


}
