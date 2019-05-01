package com.lelar.tables;

import java.io.Serializable;

public class ClientKey implements Serializable {
    private Client id;
    private String mail;

    public Client getId() {
        return id;
    }

    public void setId(Client id) {
        this.id = id;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
}

