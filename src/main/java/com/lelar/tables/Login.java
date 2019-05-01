package com.lelar.tables;


import com.lelar.repositories.ClientRepository;
import com.lelar.services.Service;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.SQLInsert;

import javax.persistence.*;

@Entity
@Table(name = "logins")
public class Login {
    @Id
    @Column(name = "login")
    private String login;

    @Column(name = "password")
    private String password;

    @OneToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "clientId")
    private Client clientId;

    public Login() {
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Client getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        ClientRepository clientRepository = new ClientRepository();

        this.clientId = clientRepository.getId(clientId);
        clientRepository.end();
    }

    @Override
    public String toString() {
        return "Login{" +
                "login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", clientId=" + clientId +
                '}';
    }
}
