package com.lanzan.entity;

/**
 * 用户表
 */
public class U_User {

    private int user_id;//用户编号
    private String user_name;//账号
    private String user_pwd;//密码

    public U_User() {
    }
    public U_User(String user_name, String user_pwd) {
        this.user_name = user_name;
        this.user_pwd = user_pwd;
    }
    public U_User(int user_id, String user_name, String user_pwd) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_pwd = user_pwd;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_pwd() {
        return user_pwd;
    }

    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }
}
