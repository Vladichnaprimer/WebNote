package com.galagan.note.controller;

import com.galagan.note.domain.Note;
import com.galagan.note.domain.User;
import com.galagan.note.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class NoteController {

    @Autowired
    private NoteService noteService;

    @RequestMapping("/createNote")
    public ModelAndView addNote(@ModelAttribute Note note)  {
        noteService.save(note);
        ModelAndView modelAndView  = new ModelAndView("noteAdded");
        return modelAndView;
    }

    @RequestMapping("/markNote/{id}")
    public void markNote(@ModelAttribute("id") Note note){
        Note n = noteService.get(note);
        noteService.update(n);
    }

    @RequestMapping("/profile")
    public ModelAndView getNotes()  {
        List notes = noteService.getAll();
        ModelAndView modelAndView  = new ModelAndView("profile");
        modelAndView.addObject("notes", notes);
        return modelAndView;
    }


}
