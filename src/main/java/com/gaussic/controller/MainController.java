package com.gaussic.controller;

import com.gaussic.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Created by dzkan on 2016/3/8.
 */
@Controller
public class MainController {

    // 自动装配数据库接口，不需要再写原始的Connection来操作数据库
    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    // get请求，访问登录页面
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        // 返回 login页面
        return "/login";
    }

    // get请求，访问注册页面
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        // 返回 login页面
        return "/register";
    }

}
