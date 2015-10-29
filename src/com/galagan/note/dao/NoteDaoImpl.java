package com.galagan.note.dao;


import com.galagan.note.domain.Note;
import com.galagan.note.domain.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class NoteDaoImpl implements NoteDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void save(Note note){
        Session session  = sessionFactory.openSession();
        session.beginTransaction();
        session.save(note);
        session.getTransaction().commit();
    }

    public void delete(Note note) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(note);
        session.getTransaction().commit();
    }

    public Note get(Note note) {
        Session session = sessionFactory.openSession();
        List<Note> notes;
        Query query = session.createQuery("from Note n where n.id = :id");
        query.setParameter("id", note.getId());
        notes = query.list();
        if(notes.isEmpty()){
            return null;
        }
        return notes.get(0);
    }

    public List<Note> getAll() {
        Session session = sessionFactory.openSession();
        return session.createCriteria(Note.class).list();
    }

    public void update(Note note){
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(note);
        session.getTransaction().commit();
    }

    public void markNote(Note note) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.createQuery("update Note n set done=:done WHERE n.id=:id")
                .setBoolean("done", note.getDone())
                .setLong("id", note.getId()).executeUpdate();
        session.getTransaction().commit();
    }
}
