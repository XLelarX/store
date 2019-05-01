package com.lelar.controllers;

import com.lelar.User;
import com.lelar.services.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/registration")
public class RegistrationController {
    private final RegistrationService registrationService;

    @Autowired
    public RegistrationController(RegistrationService registrationService) {
        this.registrationService = registrationService;
    }

    @RequestMapping(value = "/validate", method = RequestMethod.GET)
    public ModelAndView validateUser() {
        return new ModelAndView("registration", "userFromServer", new User());
    }

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public ModelAndView checkUser(@ModelAttribute("userFromServer") User user) {
        ModelAndView modelAndView = registrationService.checkUser(user);
        registrationService.registrationClient(user);
        return modelAndView;
    }
}