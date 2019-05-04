package com.lelar;

public class ProductDB {
    private static String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        ProductDB.name = name;
    }

    public ProductDB(String name) {
        ProductDB.name = name;
    }

    public ProductDB() {
    }
}
