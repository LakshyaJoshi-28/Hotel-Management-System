package com.hotel.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.sql.*;
import com.hotel.util.DBUtil;

@WebServlet("/CheckAvailabilityServlet")
public class CheckAvailabilityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String roomType = request.getParameter("roomtype");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>Available Rooms</title>");
        out.println("<style>");
        out.println("body { font-family: Arial; background: #e0f7fa; padding: 30px; }");
        out.println("h2 { text-align: center; }");
        out.println(".room-box { background: #ffffff; padding: 20px; margin: 15px auto; max-width: 400px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }");
        out.println("a { display: block; margin-top: 20px; text-align: center; color: white; background: #007BFF; padding: 10px; border-radius: 8px; text-decoration: none; }");
        out.println("a:hover { background: #0056b3; }");
        out.println("</style></head><body>");
        out.println("<h2>Available Rooms for " + roomType + "</h2>");

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "SELECT room_id, room_type, price FROM rooms_available WHERE room_type = ? AND is_available = TRUE";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, roomType);
            ResultSet rs = ps.executeQuery();

            boolean found = false;
            while (rs.next()) {
                found = true;
                out.println("<div class='room-box'>");
                out.println("<p><strong>Room ID:</strong> " + rs.getInt("room_id") + "</p>");
                out.println("<p><strong>Room Type:</strong> " + rs.getString("room_type") + "</p>");
                out.println("<p><strong>Price:</strong> ₹" + rs.getDouble("price") + "</p>");
                out.println("</div>");
            }

            if (!found) {
                out.println("<p style='text-align:center; color:red;'>No rooms available of type: " + roomType + "</p>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p style='color:red; text-align:center;'>Error fetching room availability.</p>");
        }

        out.println("<a href='CheckRoomAvailability.jsp'>Back</a>");
        out.println("</body></html>");
    }
}
