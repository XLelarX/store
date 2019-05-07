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
        return searchingService.checkName(new ProductDB("Кресло"));
    }

    @RequestMapping(value = "/table", method = RequestMethod.GET)
    public ModelAndView goToTable() {
        return searchingService.checkName(new ProductDB("Стол"));
    }

    @RequestMapping(value = "/bar", method = RequestMethod.GET)
    public ModelAndView goToBar() {
        return searchingService.checkName(new ProductDB("Барный стул"));
    }

    @RequestMapping(value = "/couches", method = RequestMethod.GET)
    public ModelAndView goToCouches() {
        return searchingService.checkName(new ProductDB("Диван"));
    }

    @RequestMapping(value = "/mirror", method = RequestMethod.GET)
    public ModelAndView goToMirror() {
        return searchingService.checkName(new ProductDB("Зеркало"));
    }

    @RequestMapping(value = "/clock", method = RequestMethod.GET)
    public ModelAndView goToClock() {
        return searchingService.checkName(new ProductDB("Часы"));
    }

    @RequestMapping(value = "/curtain", method = RequestMethod.GET)
    public ModelAndView goToCurtain() {
        return searchingService.checkName(new ProductDB("Занавески"));
    }

    @RequestMapping(value = "/sink", method = RequestMethod.GET)
    public ModelAndView goToSink() {
        return searchingService.checkName(new ProductDB("Раковина"));
    }

    @RequestMapping(value = "/box", method = RequestMethod.GET)
    public ModelAndView goToBox() {
        return searchingService.checkName(new ProductDB("Коробка"));
    }

    @RequestMapping(value = "/tv", method = RequestMethod.GET)
    public ModelAndView goToTV() {
        return searchingService.checkName(new ProductDB("Тумба под телевизор"));
    }

    @RequestMapping(value = "/garden", method = RequestMethod.GET)
    public ModelAndView goToGarden() {
        return searchingService.checkName(new ProductDB("Садовый стол"));
    }

    @RequestMapping(value = "/pouf", method = RequestMethod.GET)
    public ModelAndView goToPouf() {
        return searchingService.checkName(new ProductDB("Пуф"));
    }

    @RequestMapping(value = "/painting", method = RequestMethod.GET)
    public ModelAndView goToPainting() {
        return searchingService.checkName(new ProductDB("Картина"));
    }

    @RequestMapping(value = "/oven", method = RequestMethod.GET)
    public ModelAndView goToOven() {
        return searchingService.checkName(new ProductDB("Духовка"));
    }

    @RequestMapping(value = "/sofa", method = RequestMethod.GET)
    public ModelAndView goToSofa() {
        return searchingService.checkName(new ProductDB("Софа"));
    }

    @RequestMapping(value = "/fridge", method = RequestMethod.GET)
    public ModelAndView goToFridge() {
        return searchingService.checkName(new ProductDB("Холодильник"));
    }

    @RequestMapping(value = "/bed", method = RequestMethod.GET)
    public ModelAndView goToBed() {
        return searchingService.checkName(new ProductDB("Кровать"));
    }

    @RequestMapping(value = "/dress", method = RequestMethod.GET)
    public ModelAndView goToDress() {
        return searchingService.checkName(new ProductDB("Туалетный стол"));
    }

    @RequestMapping(value = "/glove", method = RequestMethod.GET)
    public ModelAndView goToGlove() {
        return searchingService.checkName(new ProductDB("Перчатка"));
    }
}
