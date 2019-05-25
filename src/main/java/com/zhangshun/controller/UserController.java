package com.zhangshun.controller;

import com.zhangshun.commom.SessionUtils;
import com.zhangshun.dao.UserMapper;
import com.zhangshun.entity.User;
import com.zhangshun.entity.UserExample;
import com.zhangshun.service.UserService;
import org.h2.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/11 11:00
 * @Version 1.0
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService ;
    @Autowired
    private UserMapper userMapper ;

    @RequestMapping(value = "login",method = RequestMethod.GET)
    public  String login(String username  , String password , HttpSession httpSession){
        System.out.println(username+""+password);
        if (username==null||password==null){
            httpSession.removeAttribute("msg");
            httpSession.setAttribute("msg","账号信息验证失败");
            return "redirect:/login2.jsp" ;
        }
        User user = new User() ;
        user.setUsername(username);
        user.setPassword(password);
        if (userService.selectUser(user).getUid()!=null){
            httpSession.setAttribute("user",userService.selectUser(user));
        }
        String power = user.getPower() == null?"user":(user.getPower()=="3"?"admin":"user");
        if (power.equals("admin")){
            return "redirect:/admincontext.jsp";
        }
        User user1 = userService.selectByUserName(username);
        SessionUtils.saveSession(httpSession,"user",user1);
        return  "redirect:/game/showgame";
    }

    @RequestMapping(value = "regist", method = RequestMethod.GET)
    public String regist(User user , HttpSession httpSession){
        System.out.println("regist"+user);
        List<User> users = new ArrayList<>();
        if (user.getName()!=null){
            UserExample userExample1 = new UserExample();
            userExample1.clear();
            userExample1.createCriteria().andUsernameEqualTo(user.getUsername()==null?"":user.getUsername());
             users = userMapper.selectByExample(userExample1);
            if (users.size()!=0){
                httpSession.removeAttribute("msg");
                httpSession.setAttribute("msg","您的用户名已注册");
                System.out.println("1");
                return "redirect:/login2.jsp";
            }
            if (StringUtils.isNullOrEmpty(user.getEmail())){

                    user.setPower("1");
                }else {
                    int emailexistcount = 0 ;
                    for (User usertmp : users){
                        if (StringUtils.equals(usertmp.getEmail(),user.getEmail())){
                            emailexistcount++;
                        }
                    }
                    if (emailexistcount>3){
                        httpSession.removeAttribute("msg");
                        httpSession.setAttribute("msg","您的邮箱注册超过三次请换一个邮箱注册");
                        System.out.println(2);
                        return "redirect:/login2.jsp";
                    }
                    user.setPower("0");
                }
                //uid是设置的默认自增的主键；插入的时候默认设置0
                user.setUid(0);
                user.setStatus("0");
                user.setPhone(user.getPhone() == null ? "":user.getPhone());
                user.setName(user.getName() == null ? "":user.getName());
            int regist = userMapper.insert(user);
            System.out.println(regist+"----");
            if (regist!=0){
                UserExample userExample = new UserExample();
                userExample.clear();
                userExample.createCriteria().andUsernameEqualTo(user.getUsername());
                httpSession.setAttribute("user",userMapper.selectByExample(userExample));
                System.out.println(3);
                return "redirect:/game/showgame";
            }
        }
        System.out.println(4);
        return  "redirect:/game/showgame";
    }
}
