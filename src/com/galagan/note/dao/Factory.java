package com.galagan.note.dao;


public class Factory {

    private static UserDao userDao = null;
    private static NoteDao noteDao = null;
    private static Factory instance = null;

    public static synchronized Factory getInstance() {
        if (instance == null)
            instance = new Factory();
         return  instance;
    }

    public UserDao  getUserDao(){
        if(userDao == null){
            userDao = new UserDaoImpl();
        }
        return userDao;
    }

    public NoteDao getNoteDao(){
        if(noteDao == null){
            noteDao = new NoteDaoImpl();
        }
        return noteDao;
    }


}
