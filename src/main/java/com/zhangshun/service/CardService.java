package com.zhangshun.service;

import com.zhangshun.dto.CardDto;
import com.zhangshun.entity.Card;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/25 15:13
 * @Version 1.0
 */
public interface CardService {
    List<Card> findAllCardByGameType(String ttype);

    List<Card> findByCarcByGame(String id);

    List<Card> findCardByUser(String userid);


    List<Card> findByCardHot(String id);

    List<Card> findByCardSave(String id);

    List<Card> findByCardNew(String id);

    List<CardDto> findAllBygameBigType();

    void shoucang(String tid,String uid);

    void dianzan(String id,HttpSession HttpSession);

    void add(Card card ,HttpSession httpSession);

    void delete(String id , HttpSession httpSession);

    void update(Card card );
}
