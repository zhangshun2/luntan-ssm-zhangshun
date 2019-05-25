package com.zhangshun.dao;

import com.zhangshun.entity.GameDictionary;
import com.zhangshun.entity.GameDictionaryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface GameDictionaryMapper {
    int countByExample(GameDictionaryExample example);

    int deleteByExample(GameDictionaryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(GameDictionary record);

    int insertSelective(GameDictionary record);

    List<GameDictionary> selectByExample(GameDictionaryExample example);

    GameDictionary selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") GameDictionary record, @Param("example") GameDictionaryExample example);

    int updateByExample(@Param("record") GameDictionary record, @Param("example") GameDictionaryExample example);

    int updateByPrimaryKeySelective(GameDictionary record);

    int updateByPrimaryKey(GameDictionary record);
}