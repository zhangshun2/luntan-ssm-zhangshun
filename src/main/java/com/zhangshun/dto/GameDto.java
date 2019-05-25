package com.zhangshun.dto;

import com.zhangshun.entity.Game;
import lombok.*;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/23 23:05
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@Builder
public class GameDto {
    private String name ;
    private String type ;
    private List<Game> list;
}
