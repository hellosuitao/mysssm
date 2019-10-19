package com.ruixun.service.impl;

import com.ruixun.dao.ProductDao;
import com.ruixun.entity.Product;
import com.ruixun.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;
    @Override
    public List<Product> findAll() throws Exception {
        return productDao.findAll();
    }

    @Override
    public void add(Product product) throws Exception {
        productDao.add(product);
    }
}
