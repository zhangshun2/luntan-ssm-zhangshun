package com.zhangshun.controller;

import com.zhangshun.commom.SessionUtils;
import com.zhangshun.dto.GameDto;
import com.zhangshun.entity.Game;
import com.zhangshun.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
        System.out.println(game);
        return "redirect:/game1.jsp";
    }
}
