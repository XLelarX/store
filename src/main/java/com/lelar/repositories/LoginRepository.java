package com.lelar.repositories;

import com.lelar.User;
import com.lelar.tables.Login;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class LoginRepository {
    private EntityManager em = Persistence.createEntityManagerFactory("postgres").createEntityManager();

    public LoginRepository() {
    }

    public void add(Login login) {
        em.getTransaction().begin();
        em.merge(login);
        em.getTransaction().commit();
    }

    public Login getId(long id) {
        em.getTransaction().begin();
        Login t = get(id);
        em.getTransaction().commit();
        return t;
    }

    public void delete(long id) {
        em.getTransaction().begin();
        em.remove(get(id));
        em.getTransaction().commit();
    }

    private Login get(long id) {
        return em.find(Login.class, id);
    }

    public void update(Login login) {
        em.getTransaction().begin();
        em.merge(login);
        em.getTransaction().commit();
    }

    public void end() {
        em.close();
    }

    public List<Login> getLogin(User user) {
        TypedQuery<Login> namedQuery = em.createQuery(String.format("SELECT l FROM Login l where (l.login = '%s')", user.getLogin()), Login.class);
        return namedQuery.getResultList();
    }

    public List<Login> getLoginAndPassword(User user) {
        TypedQuery<Login> namedQuery = em.createQuery(String.format("SELECT l FROM Login l where (l.login = '%s') and (l.password = '%s')", user.getLogin(), user.getPassword()), Login.class);
        return namedQuery.getResultList();
    }

}