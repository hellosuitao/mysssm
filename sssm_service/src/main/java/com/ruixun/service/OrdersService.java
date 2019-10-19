package com.ruixun.service;

import com.ruixun.entity.Orders;
import org.aspectj.weaver.ast.Or;

import java.util.List;

public interface OrdersService {

    List<Orders> findAll(int page,int size) throws Exception;

    Orders findById(String ordersId) throws Exception;
}
