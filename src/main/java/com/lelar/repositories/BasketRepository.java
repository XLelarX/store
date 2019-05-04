package com.lelar.repositories;

import com.lelar.User;
import com.lelar.tables.*;
import org.hibernate.query.QueryProducer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class BasketRepository {
    private final ClientRepository clientRepository;
    private final ProductRepository productRepository;

    @Autowired
    public BasketRepository(ClientRepository clientRepository, ProductRepository productRepository) {
        this.clientRepository = clientRepository;
        this.productRepository = productRepository;
    }

    private EntityManager em = Persistence.createEntityManagerFactory("postgres").createEntityManager();


    public void add(String clientId, long productId) {
        em.getTransaction().begin();
        Query q = em.createNativeQuery(String.format("INSERT INTO baskets VALUES (%d,'%s')", productId, clientId));
        q.executeUpdate();
//        em.merge(basket);

        em.getTransaction().commit();
    }

    public Basket getBasket(String clientId, long productId) {
        em.getTransaction().begin();

        Basket basket = get(clientId, productId);

        em.getTransaction().commit();
        return basket;
    }

    public void delete(String clientId, long productId) {
        em.getTransaction().begin();

        Query q = em.createNativeQuery(String.format("DELETE FROM baskets WHERE clientid='%s' AND productid=%d", clientId, productId));
        q.executeUpdate();

        em.getTransaction().commit();
    }

    private Basket get(String clientId, long productId) {
        Client client = clientRepository.getId(clientId);
        Product product = productRepository.getId(productId);

        return em.find(Basket.class, new BasketKey(client, product));
    }

    public void update(Basket basket) {
        em.getTransaction().begin();
        em.merge(basket);
        em.getTransaction().commit();
    }

    public void end() {
        em.close();
    }

    public List<Basket> getBasket(User user) {
        TypedQuery<Basket> namedQuery = em.createQuery(String.format("SELECT l FROM Basket l where (l.clientId = '%s')", user.getMail()), Basket.class);
        return namedQuery.getResultList();
    }
}
