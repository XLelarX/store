package com.lelar.services;

import com.lelar.ProductDB;
import com.lelar.repositories.ProductRepository;
import com.lelar.tables.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Service
public class SearchingService {
    private final ProductRepository productRepository;

    @Autowired
    public SearchingService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    private List<Product> getProductName(ProductDB productDB) {
        return productRepository.getProduct(productDB);
    }

    public ModelAndView checkName(ProductDB productDB) {
        for (Product e : getProductName(productDB))
            if (areEqual(e, productDB.getName()))
                return new ModelAndView("product", "product", e);

        return new ModelAndView("search", "userFromServer", productDB);
    }

    private boolean areEqual(Product productFromDB, String name) {
        return productFromDB.getName().equals(name);
    }

}
