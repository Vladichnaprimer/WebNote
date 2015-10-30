package com.galagan.note.controller;

import com.galagan.note.domain.User;
import com.galagan.note.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@SessionAttributes(value = "user")
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteUser(@ModelAttribute User user) {
        userService.delete(user);
        return "redirect:/users/user-list.htm";
    }

    @RequestMapping("/edit")
    public String editUser(@ModelAttribute User user) {
        userService.update(user);
        return "redirect:/users/user-list.htm";
    }

  /*  @RequestMapping(value = "/editor", method= RequestMethod.GET)
    public ModelAndView userEditor(@RequestParam("id") long id, @RequestParam("name") String name) {
        return new ModelAndView("edit-user");
    }*/

    @RequestMapping(value = "/session-attr", method = RequestMethod.GET)
    public ModelAndView sessionAttributes(@ModelAttribute User user) {
        ModelAndView modelAndView = new ModelAndView("/session-attr");
        modelAndView.addObject(user);
        return modelAndView;
    }

    @RequestMapping("/add")
    public ModelAndView addUser(@ModelAttribute User user) {
        userService.save(user);
        return new ModelAndView("/add");
    }

    @RequestMapping("/user-list")
    public ModelAndView userList() {
        ModelAndView modelAndView = new ModelAndView("users-list");
        List<User> users = userService.getAll();
        modelAndView.addObject("users", users);
        return modelAndView;
    }

    @RequestMapping("/profile")
    public ModelAndView loginUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        User us = new User();
        us.setEmail(name);
        us = userService.get(us);
        ModelAndView modelAndView = new ModelAndView("profile");
        modelAndView.addObject("user", us);
        return modelAndView;
    }
}
