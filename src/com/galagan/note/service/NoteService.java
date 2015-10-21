package com.galagan.note.service;


import com.galagan.note.dao.NoteDao;
import com.galagan.note.domain.Note;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface NoteService {


    void save(Note note);

    void delete(Note note);

    Note get(Note note);

    List<Note> getAll();

    void update(Note note);

    void markNote(Note note);
}
