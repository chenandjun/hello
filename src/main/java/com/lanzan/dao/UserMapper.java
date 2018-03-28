package com.lanzan.dao;

import com.lanzan.entity.U_User;

public interface UserMapper {
    //用户登录
    U_User getUser(U_User user);
    //用户注册
    void addU_User(U_User u_user);

}
