package com.hotel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

import com.hotel.pojo.UserInfo;
import com.hotel.dao.UserInfoDao;
import com.hotel.daoimpl.UserInfoDaoImpl;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserInfoDao userDao = new UserInfoDaoImpl();
        UserInfo user = userDao.loginUser(email, password);

        String target = "";

        if (user != null) {
            // Invalidate old session if exists
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }

            // Create new session
            session = request.getSession(true);
            session.setAttribute("user", user); // Store full user object
            request.setAttribute("username", user.getName()); // Optional, for welcome message

            String role = user.getRole();
            if ("admin".equalsIgnoreCase(role)) {
                target = "/AdminHome.jsp";
            } else if ("customer".equalsIgnoreCase(role)) {
                target = "/booking.jsp";
            } else {
                target = "/login.jsp";
                request.setAttribute("msg", "Unknown role, contact support.");
            }

        } else {
            target = "/login.jsp";
            request.setAttribute("msg", "Invalid email or password.");
        }

        RequestDispatcher rd = getServletContext().getRequestDispatcher(target);
        rd.forward(request, response);
    }
}
