package com.zhangshun.controller;

import com.zhangshun.commom.SessionUtils;
import com.zhangshun.dao.CardMapper;
import com.zhangshun.dao.GameMapper;
import com.zhangshun.entity.Card;
import com.zhangshun.entity.CardExample;
import com.zhangshun.entity.Game;
import com.zhangshun.entity.GameExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/25 11:05
 * @Version 1.0
 */

@Controller
@RequestMapping("/card")
public class CardController {
    @Autowired
    private CardMapper cardMapper ;
    @Autowired
    private CardExample cardExample ;
    @Autowired
    private GameMapper gameMapper ;
    @Autowired
    private GameExample gameExample;

    @GetMapping("/showone")
    public String showone(String id , HttpSession httpSession){
        cardExample.clear();
        cardExample.createCriteria().andTidEqualTo(Integer.parseInt(id));
        List<Card> cards = cardMapper.selectByExample(cardExample);
        SessionUtils.saveSession(httpSession,"onecard",cards.get(0));
        return "redirect:/post.jsp";
    }

    @GetMapping("/showbygameid")
    public String showByGameId( Integer id , HttpSession httpSession){
        cardExample.clear();
        cardExample.createCriteria().andGameidEqualTo(id);
        List<Card> cards = cardMapper.selectByExample(cardExample);
        SessionUtils.saveSession(httpSession,"gamelist",cards);
        return "redirect:/post.jsp";
    }

    @GetMapping("/showbygameypeid")
    public String showByGameTypeId(HttpSession httpSession,int gametypeid){
        gameExample.clear();
        gameExample.createCriteria().andGtypeEqualTo(String.valueOf(gametypeid));
        List<Game> games = gameMapper.selectByExample(gameExample);
        List<Card> listall = new ArrayList<>();
        for (Game game:games){
            Integer gid = game.getGid();
            cardExample.clear();
            cardExample.createCriteria().andGameidEqualTo(gid);
            List<Card> cards = cardMapper.selectByExample(cardExample);
            listall.addAll(cards);
        }
        SessionUtils.saveSession(httpSession,"listall",listall);
        return "redirect:/post.jsp";
    }

    @GetMapping("/delete")
    @ResponseBody
    public String delete(){
        return "";
    }

    @GetMapping("/add")
    @ResponseBody
    public String add(){
        return "";
    }

    @GetMapping("/showbyuserdo")
    public String showByUserDo(HttpSession httpSession){
        return "redirect:/post.jsp";
    }

}
