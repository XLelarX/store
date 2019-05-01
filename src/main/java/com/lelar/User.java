package com.lelar;

public class User {
    private static String login;
    private static String password;
    private static String name;
    private static String patronymic;
    private static String surname;
    private static String mail;

    public User() {
    }

    public User(String login, String password, String name, String patronymic, String surname, String mail) {
        this.login = login;
        this.password = password;
        this.name = name;
        this.patronymic = patronymic;
        this.surname = surname;
        this.mail = mail;
    }

    public User(String login, String password) {
        User.login = login;
        User.password = password;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        User.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        User.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        User.name = name;
    }

    public String getPatronymic() {
        return patronymic;
    }

    public void setPatronymic(String patronymic) {
        User.patronymic = patronymic;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        User.surname = surname;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        User.mail = mail;
    }
}