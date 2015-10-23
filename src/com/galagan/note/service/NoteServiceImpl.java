package com.galagan.note.service;


import com.galagan.note.dao.NoteDao;
import com.galagan.note.domain.Note;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class NoteServiceImpl implements NoteService{

    @Autowired
    private NoteDao noteDao;

   
    public void save(Note note) {
        noteDao.save(note);
    }

    public void delete(Note note) {
        noteDao.delete(note);
    }

    public Note get(Note note) {
        return noteDao.get(note);
    }

    public List<Note> getAll() {
        return noteDao.getAll();
    }

    public void update(Note note) {
        noteDao.update(note);
    }

    public void markNote(Note note) {
        noteDao.markNote(note);
    }
}
