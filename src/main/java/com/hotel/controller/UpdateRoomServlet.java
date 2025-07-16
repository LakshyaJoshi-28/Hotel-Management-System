package com.hotel.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hotel.pojo.RoomInfo;
import com.hotel.dao.RoomDao;
import com.hotel.daoimpl.RoomDaoImpl;

@WebServlet("/UpdateRoomServlet")
public class UpdateRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String roomNumber = request.getParameter("room_number");
        String roomType = request.getParameter("room_type");
        String priceStr = request.getParameter("price");
        String status = request.getParameter("status");
        String description = request.getParameter("description");

        if (roomNumber == null || roomType == null || priceStr == null ||
            status == null || description == null ||
            roomNumber.isEmpty() || roomType.isEmpty() || priceStr.isEmpty() ||
            status.isEmpty() || description.isEmpty()) {

            response.sendRedirect("updateroom.jsp?msg=fail");
            return;
        }

        double price;
        try {
            price = Double.parseDouble(priceStr);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("updateroom.jsp?msg=fail");
            return;
        }

        RoomInfo room = new RoomInfo();
        room.setRoomNumber(roomNumber);
        room.setRoomType(roomType);
        room.setPrice(price);
        room.setStatus(status);
        room.setDescription(description);

        RoomDao dao = new RoomDaoImpl();
        boolean result = dao.updateRoom(room);

        if (result) {
            response.sendRedirect("updateroom.jsp?msg=success");
        } else {
            response.sendRedirect("updateroom.jsp?msg=fail");
        }
    }
}
