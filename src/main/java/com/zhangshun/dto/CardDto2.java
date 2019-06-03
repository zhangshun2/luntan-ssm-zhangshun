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
 * @Date : 2019/5/25 20:19
 * @Version 1.0
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class CardDto2 {
    private String gblog ;
    private String gname ;
    private String gid ;
    private List<Card> listall;
    private List<Card> listhot;
    private List<Card> listnew;
    private List<Card> listsave;
    private List<Card> mylist;




}
