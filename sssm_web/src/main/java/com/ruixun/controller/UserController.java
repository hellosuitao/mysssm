package com.ruixun.controller;

import com.ruixun.entity.UserInfo;
import com.ruixun.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        System.out.println(userService);
        ModelAndView mv = new ModelAndView();
        List<UserInfo> userList = userService.findAll();
        mv.addObject("userList",userList);
        mv.setViewName("user-list");
        return mv;
    }
    @RequestMapping("/addUser.do")
    public String addUser() throws Exception {
        return "user-add";
    }
    @RequestMapping("/addUser1.do")
    public String addUser1(UserInfo userInfo) throws Exception {
        System.out.println(userInfo);
//        userService.addUser();
        return "redirect:findAll.do";
    }
}
