package com.lelar;

import com.lelar.tables.Basket;

import java.util.List;

public class BasketDB {
    private static List<Basket> list;
    private int number;

    public BasketDB(List<Basket> list) {
        BasketDB.list = list;
    }

    public static List<Basket> getList() {
        return list;
    }

    public static void setList(List<Basket> list) {
        BasketDB.list = list;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public BasketDB() {
    }
}
