package com.hotel.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hotel.dao.RoomDao;
import com.hotel.daoimpl.RoomDaoImpl;

@WebServlet("/DeleteRoomServlet")
public class DeleteRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // Get room number from form
        String roomNumber = request.getParameter("room_number");

        // Simple validation
        if (roomNumber == null || roomNumber.trim().isEmpty()) {
            response.sendRedirect("deleteroom.jsp?error=delete_failed");
            return;
        }

        // Call DAO to delete room
        RoomDao dao = new RoomDaoImpl();
        boolean isDeleted = dao.deleteRoom(roomNumber.trim());

        // Redirect based on result
        if (isDeleted) {
            response.sendRedirect("deleteroom.jsp?msg=success");
        } else {
            response.sendRedirect("deleteroom.jsp?error=delete_failed");
        }
    }
}
