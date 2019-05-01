package com.lelar.tables;

import com.lelar.repositories.ClientRepository;
import com.lelar.services.Service;

import javax.persistence.*;

@Entity
@Table(name = "baskets")
@IdClass(BasketKey.class)

public class Basket {
    @Id
    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "clientId")
    private Client clientId;

    @Id
    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "productId")
    private Product productId;

    public void setProductId(long productId) {
        Service<Product> sp = new Service<Product>(Product.class);
        this.productId = sp.getId(productId);
        sp.end();
    }

    public void setClientId(String clientId) {
        ClientRepository clientRepository = new ClientRepository();

        this.clientId = clientRepository.getId(clientId);
        clientRepository.end();
    }
}
