package com.lelar.services;

import com.lelar.BasketDB;
import com.lelar.ProductDB;
import com.lelar.User;
import com.lelar.repositories.BasketRepository;
import com.lelar.repositories.ProductRepository;
import com.lelar.tables.Basket;
import com.lelar.tables.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class BasketService {
    private final BasketRepository basketRepository;
    private final ProductRepository productRepository;

    @Autowired
    public BasketService(BasketRepository basketRepository, ProductRepository productRepository) {
        this.basketRepository = basketRepository;
        this.productRepository = productRepository;
    }

    public ModelAndView addToBasket() {
        Basket basket = new Basket();
//        basket.setClientId();

        for (Product e : productRepository.getProduct(new ProductDB()))
            basketRepository.add(new User().getMail(), e.getId());

//        basketRepository.add(basket);
//        System.out.println(new ProductDB().getName());


        new BasketDB(basketRepository.getBasket(new User()));

        return new ModelAndView("basket");
    }

    public ModelAndView deleteFromBasket(long n) {

        basketRepository.delete(new User().getMail(), n);

        new BasketDB(basketRepository.getBasket(new User()));

//        new ProductDB("");

        return new ModelAndView("basket");
    }

}
