package com.zhangshun.controller;

import com.zhangshun.dao.UserDoMapper;
import com.zhangshun.entity.Msg;
import com.zhangshun.entity.User;
import com.zhangshun.entity.UserDo;
import com.zhangshun.entity.UserDoExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/25 11:34
 * @Version 1.0
 */
@RestController
@RequestMapping("/userdo")
public class UserDoCOntroller {
    @Autowired
    private UserDoExample userDoExample ;
    @Autowired
    private UserDoMapper userDoMapper ;

    @GetMapping("/userdo")
    public String dianzan(String cardid , String dowhat ,HttpSession httpSession){
        User user = (User) (httpSession.getAttribute("user"));
        userDoMapper.insert(UserDo.builder().cardid(Integer.parseInt(cardid)).itemid(0).dowhat("点赞").userid(user==null?0:user.getUid()).build());
        return  "ok";
    }

    /**
     * 统计点赞和收藏的数量g
     * @param dowhat 点赞 ； 收藏gi
     * @param cardid 帖子id
     * @return
     */
    @GetMapping("/dianzancount")
    public Msg count(String dowhat , String cardid ,HttpSession httpSession){
        userDoExample.clear();
        userDoExample.createCriteria().andDowhatEqualTo(dowhat).andCardidEqualTo(Integer.parseInt(cardid));
        List<UserDo> userDos = userDoMapper.selectByExample(userDoExample);

        return new Msg().builder().count(userDos.size()).msg("ok").build();
    }

    /**
     * 进行评论
     * @param cardId
     * @param context
     * @param session
     * @return
     */
    @PostMapping("/pinglun")
    public String pinglun(String cardId , String context,HttpSession session){
        User user = (User) session.getAttribute("user");
        System.out.println("context："+context);
        if (context!=null){
            if (user!=null){
                Integer userUid = user.getUid();
                UserDo build = UserDo.builder().cardid(Integer.parseInt(cardId)).itemid(0).userid(userUid).dowhat(context).build();
                System.out.println(build);
                userDoMapper.insert(build);
            }
        }

        return "redirect:/card/showone?id="+cardId;
    }

    /**
     * 查询所有的评论
     * @param cardId
     * @return
     */
    @PostMapping("/getpinglun")
    @ResponseBody
    public List<UserDo> GetPinglun(String cardId){
        userDoExample.clear();
        userDoExample.createCriteria().andDowhatNotEqualTo("点赞").andDowhatNotEqualTo("评论");
        List<UserDo> userDos = userDoMapper.selectByExample(userDoExample);
        return userDos;
    }




}
