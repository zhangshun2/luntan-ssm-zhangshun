package com.zhangshun.serviceImpl;

import com.zhangshun.dao.GameMapper;
import com.zhangshun.dto.GameDto;
import com.zhangshun.entity.Game;
import com.zhangshun.entity.GameExample;
import com.zhangshun.service.GameService;
import org.h2.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/12 8:34
 * @Version 1.0
 */
@Service

public class GameServiceIm implements GameService {
    @Autowired
    private GameMapper gameMapper ;
    @Autowired
    private GameExample gameExample ;
    @Override
    public List<Game> selectAll() {
        gameExample.clear();
        gameExample.createCriteria().andGidIsNotNull();
        return gameMapper.selectByExample(gameExample);
    }

    @Override
    public List<Game> selectBygType(String ttype) {
        if (ttype!=null){
            gameExample.clear();
            gameExample.createCriteria().andGtypeEqualTo(ttype);
            return gameMapper.selectByExample(gameExample);
        }else {
            gameExample.createCriteria().andGidIsNotNull();
            return gameMapper.selectByExample(gameExample);
        }
    }

    @Override
    public List<GameDto> SelectByTypeAll(String type) {
        gameExample.clear();
        List<GameDto> listdto = new ArrayList<>();
        if (StringUtils.isNullOrEmpty(type)){
            for (int i = 1 ; i<=4 ;i++){
                gameExample.clear();
                gameExample.createCriteria().andGtypeEqualTo(Integer.toString(i));
                List<Game> listgame = gameMapper.selectByExample(gameExample);
                GameDto gameDto = new GameDto();
                gameDto.setList(listgame);
                gameDto.setType(listgame.get(0).getGtype());
                gameDto.setName(listgame.get(0).getGbolog());
                listdto.add(gameDto);

            }
        }else {
            gameExample.clear();
            gameExample.createCriteria().andGtypeEqualTo(type);
            List<Game> listgame = gameMapper.selectByExample(gameExample);
            GameDto gameDto = new GameDto();
            gameDto.setList(listgame);
            gameDto.setType(listgame.get(0).getGtype());
            gameDto.setName(listgame.get(0).getGbolog());
            listdto.add(gameDto);
        }
        return listdto;
    }

    @Override
    public List<Game> selectBygId(String id) {
        gameExample.clear();
        gameExample.createCriteria().andGidEqualTo(Integer.parseInt(id==null?"":id));
        List<Game> games = gameMapper.selectByExample(gameExample);
        return games;
    }
}
