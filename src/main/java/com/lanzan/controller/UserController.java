package com.lanzan.controller;

import com.lanzan.dao.UserMapper;
import com.lanzan.entity.U_User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @Autowired
    private UserMapper userMapper;
    public  Logger logger = LoggerFactory.getLogger(UserController.class);

    @RequestMapping(value = "login")
    public String login(){
        U_User u_user=userMapper.getUser(new U_User("admin","admin"));
        logger.error("登陆异常");
        System.out.println(u_user.getUser_id());
        return "index";
    }

}
