package com.lelar.repositories;

import com.lelar.tables.Client;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

@Repository
public class ClientRepository {
    private EntityManager em = Persistence.createEntityManagerFactory("postgres").createEntityManager();

    public ClientRepository() {
    }

    public void add(Client client) {
        em.getTransaction().begin();
        em.merge(client);
        em.getTransaction().commit();
    }

    public Client getId(String id) {
        em.getTransaction().begin();
        Client client = get(id);
        em.getTransaction().commit();
        return client;
    }

    public void delete(String id) {
        em.getTransaction().begin();
        em.remove(get(id));
        em.getTransaction().commit();
    }

    private Client get(String id) {
        return em.find(Client.class, id);
    }

    public void update(Client client) {
        em.getTransaction().begin();
        em.merge(client);
        em.getTransaction().commit();
    }

    public void end() {
        em.close();
    }
}