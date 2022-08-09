package Dao;

import Enity.Product;
import com.example.hdd.ConnectDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
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
