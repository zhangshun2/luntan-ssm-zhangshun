package com.zhangshun.controller;

import com.zhangshun.commom.SessionUtils;
import com.zhangshun.dao.CardMapper;
import com.zhangshun.dao.GameMapper;
import com.zhangshun.entity.*;
import com.zhangshun.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

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
    @Autowired
    private CardService cardService;

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

    @GetMapping("/toadd")
    public String toadd(HttpSession session){
        gameExample.clear();
        gameExample.createCriteria().andGidIsNotNull();
        List<Game> games = gameMapper.selectByExample(gameExample);
        System.out.println("toadd"+games);
        session.setAttribute("toadd",games);
        return "redirect:/cardAdd.jsp";
    }
    @GetMapping("/add")
    public String add(String title ,String gamename ,String content,HttpSession session){
        if (title==null){
            return "redirect:/cardAdd.jsp";
        }
        Card card = new Card();

        User user = (User) (session.getAttribute("user"));
        cardExample.clear();
        cardExample.setOrderByClause("remarks desc");
        cardExample.createCriteria().andTidIsNotNull();
        List<Card> cards = cardMapper.selectByExample(cardExample);
        gameExample.clear();
        GameExample.Criteria criteria = gameExample.createCriteria().andGnameEqualTo(gamename);
        List<Game> games = gameMapper.selectByExample(gameExample);
        System.out.println(gamename+"1111"+games);
        Game game = games.get(0);
        Card build = Card.builder().tid(0)
                .authorid(user == null ? 0 : user.getUid())
                .collect(1)
                .collecttimes(0)
                .content(content == null ? "" : content)
                .gameid(game.getGid())
                .gamename(gamename)
                .hidden("1luntanimage/default" + new Random().nextInt(10) + ".jpg")
                .remarks(String.valueOf(Integer.parseInt(cards.get(0).getRemarks()) + 1))
                .showlevel(1)
                .thumpsup(1)
                .thumpsuptimes(0)
                .title(title)
                .build();
        System.out.println("add"+build);
        cardMapper.insert(build);
        return "redirect:/game/gamedto2?gameid="+build.getGameid();
    }

    @GetMapping("/showbyuserdo")
    public String showByUserDo(HttpSession httpSession){
        return "redirect:/post.jsp";
    }
    @PostMapping("/dianzan")
    @ResponseBody
    public Map<String,String> dianzan(String id,HttpSession httpSession){
        Map<String,String> map=new HashMap<>();
        try {
            cardService.dianzan(id,httpSession);
            map.put("status","200");
            map.put("result","点赞成功！");

        }catch (Exception e){
            map.put("status","500");
            map.put("result","抱歉,系统出错,点赞失败！");
        }
        return map;
    }

    @PostMapping("/shoucang")
    @ResponseBody
    public Map<String,String> shoucang(String tid,String uid,HttpSession httpSession){
        Map<String,String> map=new HashMap<>();
        try {
            cardService.shoucang(tid,uid);
            map.put("status","200");
            map.put("result","收藏成功！");

        }catch (Exception e){
            map.put("status","500");
            map.put("result","抱歉,系统出错,收藏失败！");
        }
        return map;
    }
    @GetMapping("search")
    public String search(String word , HttpSession session){
        cardExample.clear();
        CardExample.Criteria criteria = cardExample.createCriteria().andContentLike("%" + word +"%");
        List<Card> cards = cardMapper.selectByExample(cardExample);
        session.setAttribute("",cards);
        return  "";
    }
}
