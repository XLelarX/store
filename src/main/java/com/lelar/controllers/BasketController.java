package com.lelar.controllers;

import com.lelar.BasketDB;
import com.lelar.ProductDB;
import com.lelar.services.BasketService;
import com.lelar.tables.Basket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/basket")
public class BasketController {
    @Autowired
    private final BasketService basketService;

    public BasketController(BasketService basketService) {
        this.basketService = basketService;
    }

    @RequestMapping(value = "/validate", method = RequestMethod.GET)
    public ModelAndView validateBasket() {
        return basketService.addToBasket();
    }

    @RequestMapping(value = "/deleteGlove", method = RequestMethod.GET)
    public ModelAndView deleteGloveFromBasket() {
        return basketService.deleteFromBasket(12);
    }

    @RequestMapping(value = "/deleteTable", method = RequestMethod.GET)
    public ModelAndView deleteTableFromBasket() {
        return basketService.deleteFromBasket(2);
    }

    @RequestMapping(value = "/deleteBox", method = RequestMethod.GET)
    public ModelAndView deleteBoxFromBasket() {
        return basketService.deleteFromBasket(8);
    }

    @RequestMapping(value = "/deleteArmchair", method = RequestMethod.GET)
    public ModelAndView deleteArmchairFromBasket() {
        return basketService.deleteFromBasket(1);
    }

    @RequestMapping(value = "/deleteMirror", method = RequestMethod.GET)
    public ModelAndView deleteMirrorFromBasket() {
        return basketService.deleteFromBasket(3);
    }

    @RequestMapping(value = "/deleteBed", method = RequestMethod.GET)
    public ModelAndView deleteBedFromBasket() {
        return basketService.deleteFromBasket(4);
    }

    @RequestMapping(value = "/deleteClock", method = RequestMethod.GET)
    public ModelAndView deleteClockFromBasket() {
        return basketService.deleteFromBasket(5);
    }

    @RequestMapping(value = "/deleteCurtain", method = RequestMethod.GET)
    public ModelAndView deleteCurtainFromBasket() {
        return basketService.deleteFromBasket(6);
    }

    @RequestMapping(value = "/deleteSink", method = RequestMethod.GET)
    public ModelAndView deleteSinkFromBasket() {
        return basketService.deleteFromBasket(7);
    }

    @RequestMapping(value = "/deleteTV", method = RequestMethod.GET)
    public ModelAndView deleteTVFromBasket() {
        return basketService.deleteFromBasket(9);
    }

    @RequestMapping(value = "/deleteBar", method = RequestMethod.GET)
    public ModelAndView deleteBarFromBasket() {
        return basketService.deleteFromBasket(10);
    }

    @RequestMapping(value = "/deleteGarden", method = RequestMethod.GET)
    public ModelAndView deleteGardenFromBasket() {
        return basketService.deleteFromBasket(11);
    }

    @RequestMapping(value = "/deletePouf", method = RequestMethod.GET)
    public ModelAndView deletePoufFromBasket() {
        return basketService.deleteFromBasket(13);
    }

    @RequestMapping(value = "/deletePainting", method = RequestMethod.GET)
    public ModelAndView deletePaintingFromBasket() {
        return basketService.deleteFromBasket(14);
    }

    @RequestMapping(value = "/deleteOven", method = RequestMethod.GET)
    public ModelAndView deleteOvenFromBasket() {
        return basketService.deleteFromBasket(15);
    }

    @RequestMapping(value = "/deleteFridge", method = RequestMethod.GET)
    public ModelAndView deleteFridgeFromBasket() {
        return basketService.deleteFromBasket(16);
    }

    @RequestMapping(value = "/deleteCouch", method = RequestMethod.GET)
    public ModelAndView deleteCouchFromBasket() {
        return basketService.deleteFromBasket(17);
    }

    @RequestMapping(value = "/deleteDress", method = RequestMethod.GET)
    public ModelAndView deleteDressFromBasket() {
        return basketService.deleteFromBasket(18);
    }

    @RequestMapping(value = "/deleteSofa", method = RequestMethod.GET)
    public ModelAndView deleteSofaFromBasket() {
        return basketService.deleteFromBasket(19);
    }
}
