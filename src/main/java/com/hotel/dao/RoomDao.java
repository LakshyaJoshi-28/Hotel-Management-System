package com.hotel.dao;

import java.util.List;
import com.hotel.pojo.RoomInfo;

public interface RoomDao {

    boolean addRoom(RoomInfo room);
    boolean updateRoom(RoomInfo room);
    boolean deleteRoom(String roomNumber);
    List<RoomInfo> getAllRooms();
    List<RoomInfo> getAvailableRooms();
    
    // Newly added for search functionality
    RoomInfo getRoomByNumber(String roomNumber);
}
