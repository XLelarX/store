package com.lelar.repositories;

import com.lelar.ProductDB;
import com.lelar.tables.Product;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class ProductRepository {

    private EntityManager em = Persistence.createEntityManagerFactory("postgres").createEntityManager();

    public ProductRepository() {
    }

    public void add(Product product) {
        em.getTransaction().begin();
        em.merge(product);
        em.getTransaction().commit();
    }

    public Product getId(long id) {
        em.getTransaction().begin();
        Product product = get(id);
        em.getTransaction().commit();
        return product;
    }

    public void delete(long id) {
        em.getTransaction().begin();
        em.remove(get(id));
        em.getTransaction().commit();
    }

    private Product get(long id) {
        return em.find(Product.class, id);
    }

    public void update(Product product) {
        em.getTransaction().begin();
        em.merge(product);
        em.getTransaction().commit();
    }

    public void end() {
        em.close();
    }

    public List<Product> getProduct(ProductDB productDB) {
        TypedQuery<Product> namedQuery = em.createQuery(String.format("SELECT p FROM Product p where (p.name = '%s')", productDB.getName()), Product.class);
        return namedQuery.getResultList();
    }
}

