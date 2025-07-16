package com.hotel.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hotel.dao.UserInfoDao;
import com.hotel.pojo.UserInfo;
import com.hotel.util.DBUtil;

public class UserInfoDaoImpl implements UserInfoDao {

    @Override
    public boolean registerUser(UserInfo user) {
        boolean isRegistered = false;

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getRole());

            int rows = ps.executeUpdate();
            isRegistered = rows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isRegistered;
    }

    @Override
    public UserInfo loginUser(String email, String password) {
        UserInfo user = null;

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new UserInfo();
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
