package com.hotel.controller;

import com.hotel.pojo.UserInfo;
import com.hotel.dao.UserInfoDao;
import com.hotel.daoimpl.UserInfoDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/AddNewUser")
public class AddNewUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserInfo user = new UserInfo();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole("Customer");

        UserInfoDao dao = new UserInfoDaoImpl();
        boolean result = dao.registerUser(user);

        if (result) {
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("error", "Registration failed, try again.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
