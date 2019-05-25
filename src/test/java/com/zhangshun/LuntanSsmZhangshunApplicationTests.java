package com.zhangshun;

import com.zhangshun.dao.GameMapper;
import com.zhangshun.dao.UserMapper;
import com.zhangshun.entity.GameExample;
import com.zhangshun.entity.User;
import com.zhangshun.entity.UserExample;
import com.zhangshun.service.GameService;
import com.zhangshun.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LuntanSsmZhangshunApplicationTests {

    @Autowired
    UserMapper userMapper ;
    @Autowired
    UserExample userExample ;
    @Autowired
    UserService userService;
    @Test
    public void contextLoads() {
        User user = userMapper.selectByPrimaryKey(1);
        System.out.println(user);
        userExample.isDistinct();
        UserExample.Criteria criteria = userExample.createCriteria().andPasswordIsNotNull();
        List<User> users = userMapper.selectByExample(userExample);
        System.out.println(users);


    }
    @Test
    public  void  contextService(){
        User user = new User();
        user.setUsername("zhangshun");
        user.setPassword("123456");
        User user1 = userService.selectUser(user);
        System.out.println("user:  "+user1);
        System.out.println(userService);
    }
    @Test
    public void  testInsert(){
       /* User user = new User();
        user.setUsername("11");
        user.setPassword("11");
        boolean regist = userService.regist(user);*/
        userService.selectUsers().stream().forEach(System.out::println);
    }
    @Autowired
    GameMapper gameMapper ;
    @Autowired
    GameExample gameExample ;
    @Autowired
    GameService gameService ;
    @Test
    public  void  testGameSelectAll(){
//        gameExample.createCriteria().andGidIsNotNull();
//        List<Game> games = gameMapper.selectByExample(gameExample);
//        games.stream().forEach(System.out::println);
        /*gameExample.createCriteria().andGcontextIsNotNull();
        System.out.println(gameMapper.selectByExample(gameExample));
    */
        System.out.println(gameService.selectBygType("1"));
        }

}
