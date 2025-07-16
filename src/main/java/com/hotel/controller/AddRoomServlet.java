package com.hotel.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hotel.pojo.RoomInfo;
import com.hotel.dao.RoomDao;
import com.hotel.daoimpl.RoomDaoImpl;

@WebServlet("/AddRoomServlet")
public class AddRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set encoding to handle UTF-8 characters
        request.setCharacterEncoding("UTF-8");

        // Step 1: Get form data
        String roomNumber = request.getParameter("room_number");
        String roomType = request.getParameter("room_type");
        String priceStr = request.getParameter("price");
        String status = request.getParameter("status");
        String description = request.getParameter("description");

        // Step 2: Validate inputs
        if (roomNumber == null || roomType == null || priceStr == null || status == null || description == null ||
            roomNumber.trim().isEmpty() || roomType.trim().isEmpty() ||
            priceStr.trim().isEmpty() || status.trim().isEmpty() || description.trim().isEmpty()) {
            response.sendRedirect("addroom.jsp?error=missing_fields");
            return;
        }

        // Step 3: Parse price
        double price = 0.0;
        try {
            price = Double.parseDouble(priceStr);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("addroom.jsp?error=invalid_price");
            return;
        }

        // Step 4: Populate RoomInfo object
        RoomInfo room = new RoomInfo();
        room.setRoomNumber(roomNumber);
        room.setRoomType(roomType);
        room.setPrice(price);
        room.setStatus(status);
        room.setDescription(description);

        // Debug log for verification
        System.out.println("Attempting to add room:");
        System.out.println("Room Number: " + roomNumber);
        System.out.println("Room Type: " + roomType);
        System.out.println("Price: " + price);
        System.out.println("Status: " + status);
        System.out.println("Description: " + description);

        // Step 5: Save using DAO
        RoomDao dao = new RoomDaoImpl();
        boolean isAdded = dao.addRoom(room);

        // Step 6: Redirect based on result
        if (isAdded) {
            response.sendRedirect("addroom.jsp?success=room_added");
        } else {
            response.sendRedirect("addroom.jsp?error=insert_failed");
        }
    }
}
