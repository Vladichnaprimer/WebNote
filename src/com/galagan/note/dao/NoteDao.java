package com.galagan.note.dao;


import com.galagan.note.domain.Note;
import com.galagan.note.domain.User;

import java.util.List;

public interface NoteDao {

    void save(Note note);

    void delete(Note note);

    Note get(Note note);

    List<Note> getAll();

    void update(Note note);

    void markNote(Note note);
}
