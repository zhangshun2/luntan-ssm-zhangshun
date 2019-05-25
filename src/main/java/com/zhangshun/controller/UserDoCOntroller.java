package com.zhangshun.controller;

import com.zhangshun.dao.UserDoMapper;
import com.zhangshun.entity.Msg;
import com.zhangshun.entity.User;
import com.zhangshun.entity.UserDo;
import com.zhangshun.entity.UserDoExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/25 11:34
 * @Version 1.0
 */
@RestController
public class UserDoCOntroller {
    @Autowired
    private UserDoExample userDoExample ;
    @Autowired
    private UserDoMapper userDoMapper ;

    @GetMapping("/userdo")
    public String dianzan(String cardid , String dowhat ,HttpSession httpSession){
        userDoExample.clear();
        UserDo userDo = new UserDo();
        userDo.setCardid(Integer.parseInt(cardid));
        userDo.setItemid(0);
        User user = (User) (httpSession.getAttribute("user"));
        userDo.setUserid(user==null? 0:user.getUid());
        userDo.setDowhat(dowhat);
        userDo.setItemid(0);
        userDoMapper.insert(userDo);
        return  "ok";
    }

    /**
     * 统计点赞和收藏的数量
     * @param dowhat 点赞 ； 收藏
     * @param cardid 帖子id
     * @return
     */
    @GetMapping("/dianzancount")
    public Msg count(String dowhat , String cardid ,HttpSession){
        userDoExample.clear();
        userDoExample.createCriteria().andDowhatEqualTo(dowhat).andCardidEqualTo(Integer.parseInt(cardid));
        List<UserDo> userDos = userDoMapper.selectByExample(userDoExample);

        return new Msg().builder().count(userDos.size()).msg("ok").build();
    }



}
