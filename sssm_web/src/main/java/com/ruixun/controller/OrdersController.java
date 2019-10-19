package com.ruixun.controller;

import com.github.pagehelper.PageInfo;
import com.ruixun.entity.Orders;
import com.ruixun.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrdersController {

    @Autowired
    private OrdersService ordersService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page") int page, @RequestParam(name = "size") int size) throws Exception {

        ModelAndView mv = new ModelAndView();
        List<Orders> ordersList = ordersService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(ordersList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("orders-list");
        return mv;


    }
    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id") String ordersId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Orders orders = ordersService.findById(ordersId);
        System.out.println(orders+"----------------------");
        mv.addObject("orders",orders);
        mv.setViewName("orders-show");
        return mv;

    }
}
