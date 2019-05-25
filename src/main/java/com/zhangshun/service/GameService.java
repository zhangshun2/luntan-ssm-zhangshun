package com.zhangshun.service;

import com.zhangshun.dto.GameDto;
import com.zhangshun.entity.Game;

import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/12 8:32
 * @Version 1.0
 */

public interface GameService {
    List<Game> selectAll();
    List<Game> selectBygType(String ttype);
    List<GameDto> SelectByTypeAll(String type);
    List<Game> selectBygId(String id);


}
