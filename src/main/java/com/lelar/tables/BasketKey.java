package com.lelar.tables;

import java.io.Serializable;

public class BasketKey implements Serializable {
    private Client clientId;
    private Product productId;

    public Client getClientId() {
        return clientId;
    }

    public void setClientId(Client clientId) {
        this.clientId = clientId;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public BasketKey(Client clientId, Product productId) {
        this.clientId = clientId;
        this.productId = productId;
    }

    public BasketKey() {
    }
}
