package com.zhangshun.service;

import com.zhangshun.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author : zhangshun
 * @Date : 2019/5/11 9:33
 * @Version 1.0
 */
@Service
public interface UserService {
    User selectUser(User user);
    List<User> selectUsers();
    boolean regist(User user) ;

    User selectByUserName(String username);
}
