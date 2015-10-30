package com.galagan.note.controller;

import com.galagan.note.domain.Note;
import com.galagan.note.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoteController {

    @Autowired
    private NoteService noteService;

    @RequestMapping(value = "/createNote", method = RequestMethod.POST)
    public String addNote(@ModelAttribute Note note)  {
        noteService.save(note);
        return "redirect:/users/profile.htm";
    }

    @RequestMapping("/editor/{id}")
    public ModelAndView editor(@PathVariable Long id){
        ModelAndView modelAndView = new ModelAndView("editor");
        Note note = noteService.get(new Note(id));
        modelAndView.addObject("editNote", note);
        return modelAndView;
    }

    @RequestMapping(value = "/editNote", method = RequestMethod.POST)
    public String editor(@ModelAttribute Note note){
        noteService.update(note);
        return "redirect:/profile.htm";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteNote(@ModelAttribute Note note){
        noteService.delete(note);
        return "redirect:/profile.htm";
    }

}
