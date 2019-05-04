package com.lelar.services;

import com.lelar.User;
import com.lelar.repositories.ClientRepository;
import com.lelar.repositories.LoginRepository;
import com.lelar.tables.Client;
import com.lelar.tables.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Service
public class RegistrationService {
    private final LoginRepository loginRepository;
    private final ClientRepository clientRepository;

    @Autowired
    public RegistrationService(LoginRepository loginRepository, ClientRepository clientRepository) {
        this.loginRepository = loginRepository;
        this.clientRepository = clientRepository;
    }

    private List<Login> getLogin(User user) {
        return loginRepository.getLogin(user);
    }

    public ModelAndView checkUser(User user) {
        if (notHaveEmptyField(user)) {
            for (Login e : getLogin(user))
                if (e.getLogin().equals(user.getLogin()))
                    return new ModelAndView("registration", "userFromServer", user);
        } else
            return new ModelAndView("registration", "userFromServer", user);

        return new ModelAndView("main");
    }

    private boolean notHaveEmptyField(User user) {
        return !user.getLogin().equals("") && !user.getPassword().equals("") && !user.getName().equals("") && !user.getSurname().equals("") && !user.getPatronymic().equals("");
    }

    public void registrationClient(User user) {
        addClientToDB(user);

        addLoginToDB(user);
    }

    private void addLoginToDB(User user) {
        Login login = new Login();
        login.setLogin(user.getLogin());
        login.setPassword(user.getPassword());
        login.setClientId(user.getMail());

        loginRepository.add(login);
    }

    private void addClientToDB(User user) {
        Client client = new Client();
        client.setName(user.getName());
        client.setSurname(user.getSurname());
        client.setPatronymic(user.getPatronymic());
        client.setMail(user.getMail());

        clientRepository.add(client);
    }


}
