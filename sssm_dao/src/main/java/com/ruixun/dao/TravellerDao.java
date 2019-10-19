package com.ruixun.dao;

import com.ruixun.entity.Traveller;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface TravellerDao {

    @Select("SELECT * FROM traveller WHERE id IN(SELECT travellerId FROM order_traveller WHERE orderId=#{ordersId})")
    public List<Traveller> findByOrdersId(String ordersId) throws Exception;
}
