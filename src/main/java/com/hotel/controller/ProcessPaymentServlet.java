package com.hotel.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import com.hotel.util.DBUtil;

@WebServlet("/process-payment")
public class ProcessPaymentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String name = request.getParameter("fullName");
        String cardNumber = request.getParameter("cardNumber");
        String cardPassword = request.getParameter("cardPassword");
        String roomType = request.getParameter("roomType");
        String roomPrice = request.getParameter("roomPrice");
        String amount = request.getParameter("amount");

        if (cardNumber != null) {
            cardNumber = cardNumber.replaceAll("\\s+", "");
        }

        try (Connection conn = DBUtil.getConnection()) {
            String sql = "INSERT INTO payments (full_name, card_number, card_password, room_type, room_price, amount) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, cardNumber);
            stmt.setString(3, cardPassword);
            stmt.setString(4, roomType);
            stmt.setDouble(5, Double.parseDouble(roomPrice));
            stmt.setDouble(6, Double.parseDouble(amount));

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                String targetPage = "paymenterror.jsp";
                switch (roomType.trim().toLowerCase()) {
                    case "standard single":
                        targetPage = "Paynowstandardsingle.jsp";
                        break;
                    case "standard double":
                        targetPage = "Paystandarddouble.jsp";
                        break;
                    case "premium single":
                        targetPage = "Paypremiumsingle.jsp";
                        break;
                    case "premium double":
                        targetPage = "Paypremiumdouble.jsp";
                        break;
                    case "silver double":
                        targetPage = "Paysilverdouble.jsp";
                        break;
                }

                response.sendRedirect(targetPage);
            } else {
                response.getWriter().println("<h3 style='color:red'>Payment failed. Please try again.</h3>");
            }

        } catch (NumberFormatException e) {
            response.getWriter().println("<h3 style='color:red'>Invalid format for price or amount.</h3>");
            e.printStackTrace();
        } catch (SQLException e) {
            response.getWriter().println("<h3 style='color:red'>Database error occurred.</h3>");
            e.printStackTrace();
        } catch (Exception e) {
            response.getWriter().println("<h3 style='color:red'>Unexpected server error occurred.</h3>");
            e.printStackTrace();
        }
    }
}
