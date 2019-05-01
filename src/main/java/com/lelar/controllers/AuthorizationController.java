package com.lelar.controllers;

import com.lelar.services.AuthorizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.lelar.User;

@Controller
@RequestMapping("/authorization")
public class AuthorizationController {
    private final AuthorizationService authorizationService;

    @Autowired
    public AuthorizationController(AuthorizationService authorizationService) {
        this.authorizationService = authorizationService;
    }

    @RequestMapping(value = "/validate", method = RequestMethod.GET)
    public ModelAndView validateUser() {
        return new ModelAndView("authorization", "userFromServer", new User());
    }

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public ModelAndView checkUser(@ModelAttribute("userFromServer") User user) {
        return authorizationService.checkUser(user);
    }
}
