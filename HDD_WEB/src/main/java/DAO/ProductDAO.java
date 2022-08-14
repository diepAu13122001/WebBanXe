package DAO;

import Entity.Product;
import Entity.ProductDetail;

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
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getDouble(7)));
            }
        }catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<ProductDetail> getDetailByPrdId (String id) {
        List<ProductDetail> list = new ArrayList<>();
        String query = "select * from product_detail where prd_id=\""+id+"\";";
        try {
            conn = new ConnectDB().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductDetail productDetail = new ProductDetail();
                productDetail.setPrd_id(rs.getString(1));
                productDetail.setPrd_content(rs.getString(2));
                if (rs.getInt(3)==1) {
                    productDetail.setPrd_contentIsImage(false);
                }else {
                    productDetail.setPrd_contentIsImage(true);
                }
                list.add(productDetail);
            }
        }catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        for (Product product: dao.getAllProduct()) {
            System.out.println(product.toString());
        }
    }
}
