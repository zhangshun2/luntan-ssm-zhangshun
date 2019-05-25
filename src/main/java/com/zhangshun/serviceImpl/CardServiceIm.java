package com.zhangshun.serviceImpl;

import com.zhangshun.dao.CardMapper;
import com.zhangshun.dao.GameMapper;
import com.zhangshun.dao.UserDoMapper;
import com.zhangshun.dto.CardDto;
import com.zhangshun.entity.*;
import com.zhangshun.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/25 15:16
 * @Version 1.0
 */
@Service
public class CardServiceIm implements CardService {
    @Autowired
    private CardMapper cardMapper ;
    @Autowired
    private CardExample cardExample ;
    @Autowired
    private GameExample gameExample;
    @Autowired
    private GameMapper gameMapper;
    @Autowired
    private UserDoMapper userDoMapper ;
    @Autowired
    private  UserDoExample userDoExample ;


    /**
     * 一个游戏类别下的所有帖子 比如手机游戏
     * @param ttype
     * @return
     */
    @Override
    public List<Card> findAllCardByGameType(String ttype) {
        //这是一种游戏大类型下的帖子
        gameExample.clear();
        gameExample.createCriteria().andGtypeEqualTo(String.valueOf(ttype));
        List<Game> games = gameMapper.selectByExample(gameExample);
        List<Card> listall = new ArrayList<>();
        for (Game game:games){
            Integer gid = game.getGid();
            cardExample.clear();
            cardExample.createCriteria().andGameidEqualTo(gid);
            List<Card> cards = cardMapper.selectByExample(cardExample);
            listall.addAll(cards);
        }
        return listall;
    }

    /**
     * 一个游戏下的所有帖子
     * @param id
     * @return
     */
    @Override
    public List<Card> findByCarcByGame(String id) {
        cardExample.clear();
        cardExample.createCriteria().andGameidEqualTo(Integer.parseInt(id));
        List<Card> cards = cardMapper.selectByExample(cardExample);
        return cards;
    }

    /**
     * 一个用户对应的所有帖子
     * @param userid
     * @return
     */
    @Override
    public List<Card> findCardByUser(String userid) {
        return null;
    }

    /**
     * 一个用户自己的帖子
     * @return
     */
    @Override
    public List<Card> findCardByMySelf(HttpSession httpSession) {
        return null;
    }

    /**
     * 热门帖子，点赞收藏次数多
     * @return
     */
    @Override
    public List<Card> findByCardHot() {
        return null;
    }

    /**
     * 最新帖子 排序remark时间戳
     * @return
     */
    @Override
    public List<Card> findByCardNew() {
        return null;
    }

    /**
     * 所有游戏的大类别下对应的所有帖子
     * @return
     */
    @Override
    public List<CardDto> findAllBygameBigType() {
        return null;
    }

    /**
     * 收藏
     * @param tid 帖子 uid 用户
     */
    @Override
    public void shoucang(String tid,String uid) {
        cardExample.clear();
        cardExample.createCriteria().andTidEqualTo(Integer.parseInt(tid));
        List<Card> cards = cardMapper.selectByExample(cardExample);
        Card card = cards.get(0);
        card.setCollecttimes(card.getCollecttimes()+1);
        cardMapper.updateByPrimaryKey(card);
    }

    @Override
    public void add(Card card, HttpSession httpSession) {
        card.setTid(0);
        User user = (User) httpSession.getAttribute("user");
        card.setAuthorid(user==null?0:user.getUid());
        cardMapper.insert(card);
    }

    @Override
    public void delete(String id, HttpSession httpSession) {
        cardMapper.deleteByPrimaryKey(Integer.parseInt(id));
    }

    @Override
    public void update(Card card) {
        cardMapper.updateByPrimaryKey(card);
    }

    /**
     * 点赞
     * @param id
     */
    @Override
    public void dianzan(String id,HttpSession httpSession) {
        cardExample.clear();
        cardExample.createCriteria().andTidEqualTo(Integer.parseInt(id));
        List<Card> cards = cardMapper.selectByExample(cardExample);
        Card card = cards.get(0);
        System.out.println(card);
        card.setThumpsuptimes(card.getThumpsuptimes()+1);
        User user = (User) httpSession.getAttribute("user");
        int i = cardMapper.updateByPrimaryKey(card);
        System.out.println(i);
    }
}
