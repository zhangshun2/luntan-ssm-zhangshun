package com.zhangshun.controller;

import com.zhangshun.commom.SessionUtils;
import com.zhangshun.dto.CardDto2;
import com.zhangshun.dto.GameDto;
import com.zhangshun.entity.Card;
import com.zhangshun.entity.Game;
import com.zhangshun.entity.User;
import com.zhangshun.service.CardService;
import com.zhangshun.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/12 8:41
 * @Version 1.0
 */
@Controller
@RequestMapping("/game")
public class GameController {
    @Autowired
    private GameService gameService ;
    @Autowired
    private CardService cardService ;

    @GetMapping("/gameselect")
    @ResponseBody
    public  List<Game>  showgameSelect(){
        List<Game> games = gameService.selectAll();
        return games;
    }

    @GetMapping("/showgame")
    public  String  showgame(String ttype, HttpSession httpSession){
        System.out.println(ttype);
        List<GameDto> games = gameService.SelectByTypeAll(ttype);

        System.out.println("games:"+games);
        if (httpSession.getAttribute("gamedto")!=null){
            httpSession.removeAttribute("gamedto");
        }
        httpSession.setAttribute("gamedto",games);
        Object game = httpSession.getAttribute("gamedto");
        System.out.println(game);
        return "redirect:/bootcontext.jsp";
    }
    @GetMapping("/showgameindex")
    public  String  showgameindex(String ttype, HttpSession httpSession){
        System.out.println(ttype);
        List<GameDto> games = gameService.SelectByTypeAll(ttype);

        System.out.println("games:"+games);
        if (httpSession.getAttribute("gamedto")!=null){
            httpSession.removeAttribute("gamedto");
        }
        httpSession.setAttribute("gamedto",games);
        Object game = httpSession.getAttribute("gamedto");
        System.out.println(game);
        List<Card> listhot = cardService.findByCardHot(null);
        httpSession.setAttribute("listhot",listhot);
        List<Card> listnew = cardService.findByCardNew(null);
        httpSession.setAttribute("listnew",listnew);
        return "redirect:/indexreal.jsp";
    }

    @GetMapping("/showgameone")
    public String showgameone(String ttype , HttpSession httpSession){
        List<GameDto> games = gameService.SelectByTypeAll(ttype);

        System.out.println("games:"+games);
        if (httpSession.getAttribute("gamedto")!=null){
            httpSession.removeAttribute("gamedto");
        }
        httpSession.setAttribute("gamedto",games);
        Object game = httpSession.getAttribute("gamedto");
        if (ttype == null){
            httpSession.setAttribute("c1",games.get(0).getList().size()
            +games.get(1).getList().size()
                    +games.get(2).getList().size()
                        +games.get(3).getList().size());
            httpSession.setAttribute("c2",0);
        }else{
            List<GameDto> gamesAll = gameService.SelectByTypeAll(null);
            int i = gamesAll.get(0).getList().size()
                    + gamesAll.get(1).getList().size()
                    + gamesAll.get(2).getList().size()
                    + gamesAll.get(3).getList().size();
            httpSession.setAttribute("c1",games.get(Integer.parseInt(ttype)-1).getList().size());
            httpSession.setAttribute("c2",i-games.get(Integer.parseInt(ttype)-1).getList().size());
        }
        System.out.println(game);
        return "redirect:/game1.jsp";
    }

    @GetMapping("/gamedto2")
    public String gamedto2(String gameid , HttpSession session){
        List<Game> list = gameService.selectBygId(gameid);
        CardDto2 cardDto2 = new CardDto2();
        Game game = list.get(0);
        List<Card> listall = cardService.findByCarcByGame(gameid);
        List<Card> listhot = cardService.findByCardHot(gameid);
        List<Card> listnew = cardService.findByCardNew(gameid);
        List<Card> listsave = cardService.findByCardSave(gameid);
        User user = (User)session.getAttribute("user");
        List<Card> listmy = null ;
        if (user!=null){
            listmy = cardService.findCardByUser(Integer.toString(user.getUid()));
        }
        cardDto2.setGblog(game.getGbolog());
        cardDto2.setGid(gameid);
        cardDto2.setGname(game.getGname());
        cardDto2.setListall(listall);
        cardDto2.setListhot(listhot);
        cardDto2.setListnew(listnew);
        cardDto2.setListsave(listsave);
        cardDto2.setMylist(listmy);
        session.setAttribute("gamedto2",cardDto2);
        return "redirect:/game2.jsp";
    }
}
