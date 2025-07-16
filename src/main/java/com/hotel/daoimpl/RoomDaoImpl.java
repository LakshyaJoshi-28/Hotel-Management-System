package com.hotel.daoimpl;

import java.sql.*;
import java.util.*;

import com.hotel.util.DBUtil;
import com.hotel.pojo.RoomInfo;
import com.hotel.dao.RoomDao;

public class RoomDaoImpl implements RoomDao {

    @Override
    public boolean addRoom(RoomInfo room) {
        String query = "INSERT INTO rooms(room_number, room_type, price, status, description) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, room.getRoomNumber());
            ps.setString(2, room.getRoomType());
            ps.setDouble(3, room.getPrice());
            ps.setString(4, room.getStatus());
            ps.setString(5, room.getDescription());

            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean updateRoom(RoomInfo room) {
        String query = "UPDATE rooms SET room_type=?, price=?, status=?, description=? WHERE room_number=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, room.getRoomType());
            ps.setDouble(2, room.getPrice());
            ps.setString(3, room.getStatus());
            ps.setString(4, room.getDescription());
            ps.setString(5, room.getRoomNumber());

            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean deleteRoom(String roomNumber) {
        String query = "DELETE FROM rooms WHERE room_number=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, roomNumber);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<RoomInfo> getAllRooms() {
        List<RoomInfo> list = new ArrayList<>();
        String query = "SELECT * FROM rooms";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                RoomInfo room = extractRoom(rs);
                list.add(room);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<RoomInfo> getAvailableRooms() {
        List<RoomInfo> list = new ArrayList<>();
        String query = "SELECT * FROM rooms WHERE status='Available'";  // case sensitive
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                RoomInfo room = extractRoom(rs);
                list.add(room);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public RoomInfo getRoomByNumber(String roomNumber) {
        RoomInfo room = null;
        String query = "SELECT * FROM rooms WHERE room_number=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, roomNumber);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                room = extractRoom(rs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return room;
    }

    // Private helper to reduce redundancy
    private RoomInfo extractRoom(ResultSet rs) throws SQLException {
        RoomInfo room = new RoomInfo();
        room.setId(rs.getInt("id"));
        room.setRoomNumber(rs.getString("room_number"));
        room.setRoomType(rs.getString("room_type"));
        room.setPrice(rs.getDouble("price"));
        room.setStatus(rs.getString("status"));
        room.setDescription(rs.getString("description"));
        return room;
    }
}
