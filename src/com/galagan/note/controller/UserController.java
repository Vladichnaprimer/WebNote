package com.galagan.note.controller;

import com.galagan.note.domain.User;
import com.galagan.note.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@SessionAttributes(value = "user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/session-attr", method = RequestMethod.GET)
    public ModelAndView sessionAttributes(@ModelAttribute User user){
        ModelAndView modelAndView = new ModelAndView("/session-attr");
        modelAndView.addObject(user);
        return  modelAndView;
    }

    @RequestMapping("/add")
    public ModelAndView addUser(@ModelAttribute User user)  {
        userService.save(user);
        return new ModelAndView("/add");
    }

    @RequestMapping("/profile")
    public ModelAndView loginUser(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name  = auth.getName();
        User us = new User();
        us.setEmail(name);
        us = userService.get(us);
        ModelAndView modelAndView = new ModelAndView("profile");
        modelAndView.addObject("user",us);
        return modelAndView;
    }
}
