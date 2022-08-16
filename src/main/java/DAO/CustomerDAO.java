package DAO;

import Entity.ExperienceRequest;
import Entity.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {
    public void insertExperienceReq(ExperienceRequest request) {
        String query = "INSERT INTO `experience_request`(`req_createdDate`, `req_appointmentTime`, " +
                "`req_note`, `req_status`, `adm_id`, `ctm_id`, `shr_id`) VALUES " +
                "('" + request.getReq_createdDate() + "', '" + request.getReq_appointmentTime() + "','" +
                request.getReq_note() + "', '" + request.getReq_status() + "', " + request.getAdm_id() + ", " +
                request.getCtm_id() + ", " + request.getShr_id() + ")";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteExperienceReq(String req_id) {
        String query = "delete from experience_request where req_id = " + req_id;
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<ExperienceRequest> getAllExperienceRequests() {
        List<ExperienceRequest> list = new ArrayList<>();
        String query = "SELECT * FROM experience_request";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ExperienceRequest(rs.getInt(1),
                        rs.getDate(2),
                        rs.getTimestamp(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        CustomerDAO dao = new CustomerDAO();
        ExperienceRequest request = new ExperienceRequest(0, new Date(new java.util.Date().getTime()),
                new Timestamp(System.currentTimeMillis()), "", "Đang chờ", 1, 1, 1);
        dao.insertExperienceReq(request);

        for (ExperienceRequest req : dao.getAllExperienceRequests()) {
            System.out.println(req.toString());
        }
        dao.deleteExperienceReq("1");
        for (ExperienceRequest req : dao.getAllExperienceRequests()) {
            System.out.println(req.toString());
        }
    }
}
