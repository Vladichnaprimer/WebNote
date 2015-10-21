package com.galagan.note.dao;


public class UserFactory {

    private static UserDao userDao = null;
    private static UserFactory instance = null;

    public static synchronized UserFactory getInstance() {
        if (instance == null)
            instance = new UserFactory();
         return  instance;
    }

    public UserDao  getUserDao(){
        if(userDao == null){
            userDao = new UserDaoImpl();
        }
        return userDao;
    }


}
