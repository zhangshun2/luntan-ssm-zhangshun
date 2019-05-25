package com.zhangshun.commom;

import javax.servlet.http.HttpSession;

/**
 * @Author : zhangshun
 * @Date : 2019/5/24 21:37
 * @Version 1.0
 */
public class SessionUtils {
    public static void saveSession(HttpSession httpSession,String msg, Object object){
        httpSession.removeAttribute(msg);
        httpSession.setAttribute(msg,object);
    }
    public static void removeSession(HttpSession httpSession,String msg){
        httpSession.removeAttribute(msg);
    }
}
