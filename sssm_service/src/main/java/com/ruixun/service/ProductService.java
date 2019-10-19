package com.ruixun.service;

import com.ruixun.entity.Product;

import java.util.List;

public interface ProductService {
    public List<Product> findAll() throws Exception;

    void add(Product product) throws Exception;
}
