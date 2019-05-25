package com.zhangshun.dto;

import com.zhangshun.entity.Card;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/25 15:38
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@Builder
public class CardDto {
    private String type ;
    private String name ;
    private List<Card> list ;
}
