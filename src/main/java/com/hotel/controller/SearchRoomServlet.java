package com.hotel.controller;

import com.hotel.dao.RoomDao;
import com.hotel.daoimpl.RoomDaoImpl;
import com.hotel.pojo.RoomInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/SearchRoomServlet")
public class SearchRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roomNumber = request.getParameter("roomNumber");

        RoomDao dao = new RoomDaoImpl();
        RoomInfo room = dao.getRoomByNumber(roomNumber);

        if (room != null) {
            request.setAttribute("room", room);
            request.getRequestDispatcher("roomdetails.jsp").forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Room not found.");
            request.getRequestDispatcher("searchroom.jsp").forward(request, response);
        }
    }
}
