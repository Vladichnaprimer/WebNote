package com.galagan.note.dao;

import com.galagan.note.domain.Note;

public class NoteFactory {

    private static NoteDao noteDao = null;
    private static UserFactory instance = null;

    public static synchronized UserFactory getInstance() {
        if (instance == null)
            instance = new UserFactory();
        return  instance;
    }

    public NoteDao  getNoteDao(){
        if(noteDao == null){
            noteDao = new NoteDaoImpl();
        }
        return noteDao;
    }

}
