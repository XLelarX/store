package com.lelar.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/move")
public class MoveController {
    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public ModelAndView goToMain() {
        return new ModelAndView("main");
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public ModelAndView goToProduct() {
        return new ModelAndView("product");
    }
}
