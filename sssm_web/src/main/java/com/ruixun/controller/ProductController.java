package com.ruixun.controller;

import com.ruixun.entity.Product;
import com.ruixun.service.ProductService;
import com.ruixun.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.UUID;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = productService.findAll();
        modelAndView.addObject("products",products);
        modelAndView.setViewName("product-list");
        return modelAndView;
    }

    @RequestMapping("/addProduct.do")
    public String addProduct() throws Exception {
        return "product-add";
    }
    @RequestMapping("/addProduct1.do")
    public String addProduct1(String productNum, String productName,
                           String cityName, String productPrice, String productStatus,
                           String productDesc) throws Exception {
        Product product = new Product();
        UUID id = UUID.randomUUID();
        String iid = id.toString();
        product.setId(iid);
        product.setProductNum(productNum);
        product.setProductName(productName);
        product.setCityName(cityName);
        product.setProductPrice(Integer.parseInt(productPrice));
        product.setProductDesc(productDesc);
        product.setProductStatus(Integer.parseInt(productStatus));
        product.setProductStatusStr(productStatus);
        Date date = new Date();
        String sdate = DateUtils.dateToString(date, "yyyy:MM:dd HH:mm");
        product.setDepartureTime(date);
        product.setDepartureTimeStr(sdate);
        System.out.println(product);
        productService.add(product);
        return "redirect:findAll.do";

    }
}
