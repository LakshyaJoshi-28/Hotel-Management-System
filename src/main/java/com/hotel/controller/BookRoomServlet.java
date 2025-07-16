package com.hotel.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import com.hotel.util.DBUtil;

@WebServlet("/book-room")
public class BookRoomServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        try {
            // ✅ Get form parameters
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String checkin = request.getParameter("checkin");
            String checkout = request.getParameter("checkout");
            String adults = request.getParameter("adults");
            String children = request.getParameter("children");
            String roomType = request.getParameter("roomType");
            String priceStr = request.getParameter("price").replaceAll("[^\\d.]", ""); // remove ₹
            String totalAmountStr = request.getParameter("totalAmount").replaceAll("[^\\d.]", ""); // from hidden input

            // ✅ Parse dates
            java.sql.Date checkinDate = java.sql.Date.valueOf(checkin);
            java.sql.Date checkoutDate = java.sql.Date.valueOf(checkout);

            // ✅ Parse numbers
            double pricePerNight = Double.parseDouble(priceStr);
            double totalAmount = Double.parseDouble(totalAmountStr);

            // ✅ Save booking to DB
            try (Connection conn = DBUtil.getConnection()) {
                String sql = "INSERT INTO bookings (name, email, checkin_date, checkout_date, adults, children, room_type, price, total_amount) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, name);
                stmt.setString(2, email);
                stmt.setDate(3, checkinDate);
                stmt.setDate(4, checkoutDate);
                stmt.setInt(5, Integer.parseInt(adults));
                stmt.setInt(6, Integer.parseInt(children));
                stmt.setString(7, roomType);
                stmt.setDouble(8, pricePerNight);
                stmt.setDouble(9, totalAmount);  // ✅ saving total amount

                int rows = stmt.executeUpdate();

                if (rows > 0) {
                    // ✅ Set session attributes for payment page
                    HttpSession session = request.getSession();
                    session.setAttribute("roomType", roomType);
                    session.setAttribute("roomPrice", pricePerNight);
                    session.setAttribute("amount", totalAmount);

                    // Redirect to payment page
                    response.sendRedirect("Paymentstandardsingle.jsp");
                } else {
                    out.println("<h3 style='color:red;'>Booking failed. Please try again.</h3>");
                }

            } catch (SQLException e) {
                out.println("<h3 style='color:red;'>Database error.</h3>");
                e.printStackTrace();
            }

        } catch (Exception e) {
            out.println("<h3 style='color:red;'>Server error occurred.</h3>");
            e.printStackTrace();
        }
    }
}
