package com.galagan.note.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
    @RequestMapping("/index")
    public ModelAndView main() {
        return new ModelAndView("index");
    }
}
