package com.zhangshun.serviceImpl;

import com.zhangshun.dao.UserMapper;
import com.zhangshun.entity.User;
import com.zhangshun.entity.UserExample;
import com.zhangshun.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * @Author : zhangshun
 * @Date : 2019/5/11 9:36
 * @Version 1.0
 */
@Service
public class UserServiceIm implements UserService {
    @Autowired
    private UserMapper userMapper ;
    @Autowired
    private UserExample userExample ;

    @Override
    public User selectUser(User user) {
        userExample.clear();
        if (user!=null){

            userExample.createCriteria().andUsernameEqualTo(user.getUsername()).andPasswordEqualTo(user.getPassword());
            List<User> users = userMapper.selectByExample(userExample);
            if (users==null){
                return  new User();
            }
            return users.get(0);
        }else {
            return  new User();
        }

    }

    @Override
    public List<User> selectUsers() {
        userExample.createCriteria().andUidIsNotNull();
        List<User> users = userMapper.selectByExample(userExample);
        return users;
    }

    @Override
    public boolean regist(User user) {
        if (user==null){
            return false ;
        }
        if (user.getPassword()==null){
            user.setPassword("000000");
        }
        if (user.getUsername()==null){
            user.setUsername(UUID.randomUUID().toString().substring(2,10));
        }
        if (user.getEmail()==null){
            user.setEmail("null");
        }
        if (user.getName()==null){
            user.setName("null");
        }
        if (user.getPhone()==null){
            user.setPhone("null");
        }
        if (user.getUid()==null){
            user.setUid(0);
        }
        if (user.getPower()==null){
            user.setPower("1");
        }
        if (user.getStatus()==null){
            user.setStatus("0");
        }
        userMapper.insert(user);
        return true;
    }

    @Override
    public User selectByUserName(String username) {
        userExample.clear();
        userExample.createCriteria().andUsernameEqualTo(username);
        List<User> users = userMapper.selectByExample(userExample);
        User user1 = users.get(0);
        return user1;
    }
}
