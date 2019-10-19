package com.ruixun.dao;

import com.ruixun.entity.Member;
import com.ruixun.entity.Orders;
import com.ruixun.entity.Product;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface OrdersDao {

    @Select("select * from orders")
    @Results({
            @Result (id = true, property = "id", column = "id"),
            @Result (property = "orderNum", column="orderNum"),
            @Result (property = "orderTime", column = "orderTime"),
            @Result (property = "orderStatus", column = "orderStatus"),
            @Result (property = "peopleCount", column = "peopleCount"),
            @Result (property = "peopleCount", column ="peopleCount"),
            @Result (property = "payType", column ="payType"),
            @Result (property = "orderDesc" ,column = "orderDesc"),
            @Result (property = "product", column = "productId",javaType = Product.class,
                    one=@One(select = "com.ruixun.dao.ProductDao.findById"))

            })
    public List<Orders> findAll() throws Exception;

    @Select("select * from orders where id=#{ordersId}")
    @Results({
            @Result (id = true, property = "id", column = "id"),
            @Result (property = "orderNum", column="orderNum"),
            @Result (property = "orderTime", column = "orderTime"),
            @Result (property = "orderStatus", column = "orderStatus"),
            @Result (property = "peopleCount", column = "peopleCount"),
            @Result (property = "peopleCount", column ="peopleCount"),
            @Result (property = "payType", column ="payType"),
            @Result (property = "orderDesc" ,column = "orderDesc"),
            @Result (property = "product", column = "productId",javaType = Product.class,
                    one=@One(select = "com.ruixun.dao.ProductDao.findById")),
            @Result(property = "member",column = "memberId",javaType = Member.class,
                    one=@One(select = "com.ruixun.dao.MemberDao.findById")
            ),
            @Result(property = "travellers",column = "id",javaType = java.util.List.class,
                    many = @Many(select = "com.ruixun.dao.TravellerDao.findByOrdersId"))

    })
    public Orders findById(String ordersId) throws Exception;
}
