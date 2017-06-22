package com.gaussic.controller;

import com.gaussic.model.UserEntity;
import com.gaussic.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;


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

    //登录页面
    // get请求，访问登录页面
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        // 返回 login页面
        return "/login";
    }

    //注册页面
    // get请求，访问注册页面
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        // 返回 login页面
        return "/register";
    }
    // post请求，处理添加用户请求,并重定向到主页面
    @RequestMapping(value = "/registerP", method = RequestMethod.POST)
    public String registerPost(@ModelAttribute("user")  @Valid UserEntity userEntity, Errors errors) {
        // 注意此处，post请求传递过来的是一个UserEntity对象，里面包含了该用户的信息
        // 通过@ModelAttribute()注解可以获取传递过来的'user'，并创建这个对象
        if (errors.hasErrors()) {
            return "register";
        }
        // 数据库中添加一个用户，该步暂时不会刷新缓存
        //userRepository.save(userEntity);

        // 数据库中添加一个用户，并立即刷新缓存
        System.out.println(userEntity.getUsername());
        userRepository.saveAndFlush(userEntity);

        // 重定向到用户管理页面，方法为 redirect:url
        return "redirect:/";

    }

}
