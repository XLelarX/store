package com.lelar.services;

import com.lelar.BasketDB;
import com.lelar.User;
import com.lelar.repositories.BasketRepository;
import com.lelar.repositories.LoginRepository;
import com.lelar.tables.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Service
public class AuthorizationService {
    private final LoginRepository loginRepository;
    private final BasketRepository basketRepository;

    @Autowired
    public AuthorizationService(LoginRepository loginRepository, BasketRepository basketRepository) {
        this.loginRepository = loginRepository;
        this.basketRepository = basketRepository;
    }

    private List<Login> getLoginAndPassword(User user) {
        return loginRepository.getLoginAndPassword(user);
    }

    public ModelAndView checkUser(User user) {
        for (Login e : getLoginAndPassword(user))
            if (areEqual(e, user)) {
                user.setMail(e.getClientId().getMail());
                new BasketDB(basketRepository.getBasket(new User()));
                return new ModelAndView("main", "user", user);
            }

        return new ModelAndView("authorization", "userFromServer", new User("", ""));
    }

    private boolean areEqual(Login loginFromDB, User user) {
        return loginFromDB.getLogin().equals(user.getLogin()) && loginFromDB.getPassword().equals(user.getPassword());
    }

    public ModelAndView exit() {
        new User(null, null, null, null, null, null);
        return new ModelAndView("main");
    }
}
