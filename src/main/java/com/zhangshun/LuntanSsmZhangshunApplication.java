package com.zhangshun;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SuppressWarnings("ALL")
@SpringBootApplication
@MapperScan("com.zhangshun.dao")
public class LuntanSsmZhangshunApplication {

    public static void main(String[] args) {
        SpringApplication.run(LuntanSsmZhangshunApplication.class, args);
    }

}
