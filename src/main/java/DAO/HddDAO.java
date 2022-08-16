package DAO;

import Entity.ExperienceRequest;
import Entity.Product;
import Entity.Showroom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HddDAO {

    public List<Showroom> getAllShowroom() {
        List<Showroom> list = new ArrayList<>();
        String query = "select * from showroom;";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Showroom(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getTime(5),
                        rs.getTime(6)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Showroom getShrById(int shr_id) {
        Showroom shr = new Showroom();
        String query = "SELECT * FROM `showroom` WHERE shr_id = " + shr_id;
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                shr.setShr_id(rs.getInt(1));
                shr.setShr_name(rs.getString(2));
                shr.setShr_address(rs.getString(3));
                shr.setShr_phoneNum(rs.getString(4));
                shr.setShr_openTime(rs.getTime(5));
                shr.setShr_closeTime(rs.getTime(6));
            }
            rs.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return shr;
    }

    public static void main(String[] args) {

    }
}
