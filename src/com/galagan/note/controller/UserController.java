package com.galagan.note.controller;

import com.galagan.note.domain.User;
import com.galagan.note.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/add")
    public ModelAndView addUser(@ModelAttribute User user)  {
        userService.save(user);
        ModelAndView modelAndView  = new ModelAndView("/add");
        return modelAndView;
    }

    @RequestMapping("/enter")
    public ModelAndView loginUser(@ModelAttribute User user){
        User us = userService.get(user);
        ModelAndView modelAndView = new ModelAndView("profile");
        modelAndView.addObject("user",us);
        return modelAndView;
    }

    @RequestMapping("/usersList")
    public List<User> getUsersList(){
         return null;
    }

}
