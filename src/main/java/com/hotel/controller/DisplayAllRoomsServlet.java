package com.hotel.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hotel.dao.RoomDao;
import com.hotel.daoimpl.RoomDaoImpl;
import com.hotel.pojo.RoomInfo;

@WebServlet("/DisplayAllRoomsServlet")
public class DisplayAllRoomsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RoomDao dao = new RoomDaoImpl();
		List<RoomInfo> allRooms = dao.getAllRooms();

		request.setAttribute("allRooms", allRooms);
		RequestDispatcher dispatcher = request.getRequestDispatcher("displayall.jsp");
		dispatcher.forward(request, response);
	}
}
