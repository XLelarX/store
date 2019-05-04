package com.lelar.controllers;

import com.lelar.BasketDB;
import com.lelar.ProductDB;
import com.lelar.services.SearchingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/move")
public class MoveController {
    private final SearchingService searchingService;

    @Autowired
    public MoveController(SearchingService searchingService) {
        this.searchingService = searchingService;
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public ModelAndView goToMain() {
        return new ModelAndView("main", "product", new ProductDB(""));
    }

    @RequestMapping(value = "/basket", method = RequestMethod.GET)
    public ModelAndView goToBasket() {
        return new ModelAndView("basket");
    }

    @RequestMapping(value = "/armchair", method = RequestMethod.GET)
    public ModelAndView goToArmchair() {
        return searchingService.checkName(new ProductDB("Armchair"));
    }

    @RequestMapping(value = "/table", method = RequestMethod.GET)
    public ModelAndView goToTable() {
        return searchingService.checkName(new ProductDB("Table"));
    }

    @RequestMapping(value = "/bar", method = RequestMethod.GET)
    public ModelAndView goToBar() {
        return searchingService.checkName(new ProductDB("Bar_Chair"));
    }

    @RequestMapping(value = "/couches", method = RequestMethod.GET)
    public ModelAndView goToCouches() {
        return searchingService.checkName(new ProductDB("Couch"));
    }

    @RequestMapping(value = "/mirror", method = RequestMethod.GET)
    public ModelAndView goToMirror() {
        return searchingService.checkName(new ProductDB("Mirror"));
    }

    @RequestMapping(value = "/clock", method = RequestMethod.GET)
    public ModelAndView goToClock() {
        return searchingService.checkName(new ProductDB("Clock"));
    }

    @RequestMapping(value = "/curtain", method = RequestMethod.GET)
    public ModelAndView goToCurtain() {
        return searchingService.checkName(new ProductDB("Curtain"));
    }

    @RequestMapping(value = "/sink", method = RequestMethod.GET)
    public ModelAndView goToSink() {
        return searchingService.checkName(new ProductDB("Sink"));
    }

    @RequestMapping(value = "/box", method = RequestMethod.GET)
    public ModelAndView goToBox() {
        return searchingService.checkName(new ProductDB("Box"));
    }

    @RequestMapping(value = "/tv", method = RequestMethod.GET)
    public ModelAndView goToTV() {
        return searchingService.checkName(new ProductDB("TV_Table"));
    }

    @RequestMapping(value = "/garden", method = RequestMethod.GET)
    public ModelAndView goToGarden() {
        return searchingService.checkName(new ProductDB("Garden_Table"));
    }

    @RequestMapping(value = "/pouf", method = RequestMethod.GET)
    public ModelAndView goToPouf() {
        return searchingService.checkName(new ProductDB("Pouf"));
    }

    @RequestMapping(value = "/painting", method = RequestMethod.GET)
    public ModelAndView goToPainting() {
        return searchingService.checkName(new ProductDB("Painting"));
    }

    @RequestMapping(value = "/oven", method = RequestMethod.GET)
    public ModelAndView goToOven() {
        return searchingService.checkName(new ProductDB("Oven"));
    }

    @RequestMapping(value = "/sofa", method = RequestMethod.GET)
    public ModelAndView goToSofa() {
        return searchingService.checkName(new ProductDB("Sofa"));
    }

    @RequestMapping(value = "/fridge", method = RequestMethod.GET)
    public ModelAndView goToFridge() {
        return searchingService.checkName(new ProductDB("Fridge"));
    }

    @RequestMapping(value = "/bed", method = RequestMethod.GET)
    public ModelAndView goToBed() {
        return searchingService.checkName(new ProductDB("Bed"));
    }

    @RequestMapping(value = "/dress", method = RequestMethod.GET)
    public ModelAndView goToDress() {
        return searchingService.checkName(new ProductDB("Dressing_Table"));
    }

    @RequestMapping(value = "/glove", method = RequestMethod.GET)
    public ModelAndView goToGlove() {
        return searchingService.checkName(new ProductDB("Glove"));
    }
}
