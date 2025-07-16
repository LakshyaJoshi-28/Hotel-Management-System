package com.hotel.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hotel.dao.RoomDao;
import com.hotel.daoimpl.RoomDaoImpl;
import com.hotel.pojo.RoomInfo;

@WebServlet("/ListAvailableRoomsServlet")
public class ListAvailableRoomsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        // Fetch available rooms from DAO
        RoomDao dao = new RoomDaoImpl();
        List<RoomInfo> availableRooms = dao.getAvailableRooms();

        // Attach to request
        request.setAttribute("roomList", availableRooms);

        // Forward to JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("listavailable.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
