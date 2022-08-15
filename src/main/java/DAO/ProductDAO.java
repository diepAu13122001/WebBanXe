package DAO;

import Entity.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product;";
        try {
            conn = new ConnectDB().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getDouble(7),
                        rs.getDate(8),
                        rs.getTimestamp(9),
                        getColorListByPrdId(rs.getInt(1)),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getInt(12),
                        getDetailListByPrdId(rs.getInt(1))));
            }
        }catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<String[]> getColorListByPrdId (int prd_id) {
        List<String[]> list = new ArrayList<>();
        String query = "select * from product_color where prd_id = ?;";
        return list;
    }

    public List<String[]> getDetailListByPrdId (int prd_id) {
        List<String[]> list = new ArrayList<>();

        return list;
    }

//    public List<ProductDetail> getDetailByPrdId (String id) {
//        List<ProductDetail> list = new ArrayList<>();
//        String query = "select * from product_detail where prd_id=\""+id+"\";";
//        try {
//            conn = new ConnectDB().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                ProductDetail productDetail = new ProductDetail();
//                productDetail.setPrd_id(rs.getString(1));
//                productDetail.setPrd_content(rs.getString(2));
//                if (rs.getInt(3)==1) {
//                    productDetail.setPrd_contentIsImage(false);
//                }else {
//                    productDetail.setPrd_contentIsImage(true);
//                }
//                list.add(productDetail);
//            }
//        }catch (Exception e) {
//            System.out.println(e);
//        }
//        return list;
//    }
//
//    public List<Product> getNewestProducts (int limit) {
//        List<Product> list = new ArrayList<>();
//        String query = "select * from product;";
//        try {
//            conn = new ConnectDB().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getInt(4),
//                        rs.getInt(5),
//                        rs.getInt(6),
//                        rs.getDouble(7)));
//            }
//        }catch (Exception e) {
//            System.out.println(e);
//        }
//        return list;
//    }

    public Product getMostPopPrd () {
        Product popPrd = new Product();
        String query = "SELECT * FROM product p JOIN\n" +
                "(SELECT prd_id, sum(dtl_productAmount) as qty\n" +
                "FROM bill_detail\n" +
                "GROUP BY prd_id\n" +
                "ORDER by qty desc\n" +
                "LIMIT 1) table1\n" +
                "ON p.prd_id = table1.prd_id\n";
        try {
            conn = new ConnectDB().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                popPrd.setPrd_id(rs.getInt(1));
                popPrd.setPrd_ava(rs.getString(3));
                popPrd.setPrd_price(rs.getInt(6));
                popPrd.setPrd_name(rs.getString(2));
                popPrd.setTpe_id(rs.getInt(5));
                popPrd.setPrd_discountPercent(rs.getDouble(7));
                popPrd.setBrd_id(rs.getInt(4));
            }
        }catch (Exception e) {
            System.out.println(e);
        }
        return popPrd;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();

        for (Product prd: dao.getAllProduct()) {
            System.out.println(prd.toString());
        }

//        System.out.println(dao.getMostPopPrd().toString());
//
//        Long datetime = System.currentTimeMillis();
//        Timestamp timestamp = new Timestamp(datetime);
//        System.out.println("Current Time Stamp: "+timestamp);
    }
}
