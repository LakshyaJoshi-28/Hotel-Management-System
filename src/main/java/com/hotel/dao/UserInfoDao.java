package com.hotel.dao;

import com.hotel.pojo.UserInfo;

public interface UserInfoDao {
    boolean registerUser(UserInfo user);
    UserInfo loginUser(String email, String password);
}

