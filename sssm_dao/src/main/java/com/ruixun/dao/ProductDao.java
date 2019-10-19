package com.ruixun.dao;

import com.ruixun.entity.Product;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProductDao {

    @Select("select * from product where id=#{id}")
    public Product findById(String id) throws Exception;

    @Select("select * from product")
    public List<Product> findAll() throws Exception;

    @Insert("insert into product(id,productNum,productName,cityName,departureTime,productPrice," +
            "productDesc,productStatus) " +
            "values(#{id},#{productNum},#{productName},#{cityName},#{departureTime},#{productPrice}," +
            "#{productDesc},#{productStatus})")
    void add(Product product) throws Exception;
}
