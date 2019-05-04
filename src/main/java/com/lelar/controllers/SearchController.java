package com.lelar.controllers;

import com.lelar.ProductDB;
import com.lelar.services.SearchingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/search")
public class SearchController {
    private final SearchingService searchingService;

    @Autowired
    public SearchController(SearchingService searchingService) {
        this.searchingService = searchingService;
    }

    @RequestMapping(value = "/validate", method = RequestMethod.GET)
    public ModelAndView validateName() {
        return new ModelAndView("search", "productFromServer", new ProductDB(""));
    }

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public ModelAndView checkUser(@ModelAttribute("productFromServer") ProductDB productDB) {
        return searchingService.checkName(productDB);
    }
}