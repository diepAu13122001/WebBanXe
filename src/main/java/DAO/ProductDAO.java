package DAO;

import Entity.*;

import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO {
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product;";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
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
                        getColorListByPrdId(rs.getInt(1) + ""),
                        rs.getInt(10),
                        rs.getInt(11),
                        getDetailListByPrdId(rs.getInt(1) + "")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getPrdListByBrdId(String brd_id, List<Product> list) {
        int brd_idInt = 0;
        if (brd_id == null || brd_id.equals("")) {
            brd_idInt = 0;
        } else {
            brd_idInt = Integer.parseInt(brd_id);
        }
        int finalBrd_idInt = brd_idInt;
        return list.stream().filter(p -> p.getBrd_id() == finalBrd_idInt).collect(Collectors.toList());
    }

    public List<Product> getPrdListByTpeId(String tpe_id, List<Product> list) {
        int tpe_idInt = 0;
        if (tpe_id == null || tpe_id.equals("")) {
            tpe_idInt = 0;
        } else {
            tpe_idInt = Integer.parseInt(tpe_id);
        }
        int finalTpe_idInt = tpe_idInt;
        return list.stream().filter(p -> p.getBrd_id() == finalTpe_idInt).collect(Collectors.toList());
    }

    public List<Product> getPrdListByColor(String prd_color, List<Product> list) {
        List<Product> result = new ArrayList<>();
        for (Product prd : list) {
            for (String[] color : getColorListByPrdId(prd.getPrd_id() + "")) {
                if (color[0].equals(prd_color)) {
                    result.add(prd);
                }
            }
        }
        return result;
    }

    public List<Product> getPrdListByPrice(String start, String end, List<Product> list) {
        int startInt = Integer.parseInt(start);
        int endInt = Integer.parseInt(end);
        return list.stream().filter(p -> p.getPrd_soldPrice() > startInt && p.getPrd_soldPrice() < endInt).collect(Collectors.toList());
    }

    public int getMaxPriceOfPrdList(List<Product> prdList) {
        List<Integer> priceList = new ArrayList<>();
        for (Product prd : prdList) {
            priceList.add(prd.getPrd_soldPrice());
        }
        return Collections.max(priceList);
    }

    public int getMinPriceOfPrdList(List<Product> prdList) {
        List<Integer> priceList = new ArrayList<>();
        for (Product prd : prdList) {
            priceList.add(prd.getPrd_soldPrice());
        }
        return Collections.min(priceList);
    }

    public int[][] getPriceRangeList(List<Product> prdList, int limit) {
        int max = getMaxPriceOfPrdList(prdList);
        int min = getMinPriceOfPrdList(prdList);
        if (max - min < limit) {
            return new int[][]{{min, max}};
        } else {
            int size = (max - min) / limit;
            int[][] priceList = new int[2][size];
            for (int i = 0; i < size; i++) {
                priceList[0][i] = min;
                min += limit;
                priceList[1][i] = min;
            }
            return priceList;
        }
    }

    public List<Product> getPrdBySearchString(String search) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` WHERE " +
                "prd_name LIKE '%" + search + "%' " +
                "OR tpe_id IN (SELECT tpe_id FROM `product_type` WHERE tpe_name LIKE '%" + search + "%') " +
                "OR brd_id IN (SELECT brd_id FROM `product_brand` WHERE brd_name LIKE '%" + search + "%')";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
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
                        getColorListByPrdId(rs.getInt(1) + ""),
                        rs.getInt(10),
                        rs.getInt(11),
                        getDetailListByPrdId(rs.getInt(1) + "")));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<String[]> getColorListByPrdId(String prd_id) {
        List<String[]> list = new ArrayList<>();
        String query = "select * from product_color where prd_id =" + prd_id + ";";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new String[]{rs.getString(2),
                        rs.getString(3)});
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<String[]> getDetailListByPrdId(String prd_id) {
        List<String[]> list = new ArrayList<>();
        String query = "select * from product_detail where prd_id=" + prd_id + ";";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new String[]{rs.getString(2),
                        rs.getString(3)});
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<ProductBrand> getAllBrand() {
        List<ProductBrand> list = new ArrayList<>();
        String query = "select * from product_brand;";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductBrand(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getNewestProducts(int limit) throws UnsupportedEncodingException {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `product`\n" +
                "ORDER BY prd_createdDate DESC\n" +
                "LIMIT " + limit;
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
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
                        getColorListByPrdId(rs.getInt(1) + ""),
                        rs.getInt(10),
                        rs.getInt(11),
                        getDetailListByPrdId(rs.getInt(1) + "")));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getPopList(int limit) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT p.* FROM product p JOIN (SELECT prd_id, sum(dtl_productAmount) as qty " +
                "FROM bill_detail " +
                "GROUP BY prd_id " +
                "ORDER by qty desc " +
                "LIMIT " + limit + ") table1 " +
                "ON p.prd_id = table1.prd_id";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
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
                        getColorListByPrdId(rs.getInt(1) + ""),
                        rs.getInt(10),
                        rs.getInt(11),
                        getDetailListByPrdId(rs.getInt(1) + "")));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getPrdById(String prd_id) {
        Product prd = new Product();
        String query = "SELECT * FROM product where prd_id = " + prd_id;
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                prd = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getDouble(7),
                        rs.getDate(8),
                        rs.getTimestamp(9),
                        getColorListByPrdId(rs.getInt(1) + ""),
                        rs.getInt(10),
                        rs.getInt(11),
                        getDetailListByPrdId(rs.getInt(1) + ""));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return prd;
    }

    public Product getMostPopPrd() {
        Product popPrd = new Product();
        String query = "SELECT p.* FROM product p JOIN\n" +
                "(SELECT prd_id, sum(dtl_productAmount) as qty\n" +
                "FROM bill_detail\n" +
                "GROUP BY prd_id\n" +
                "ORDER by qty desc\n" +
                "LIMIT 1) table1\n" +
                "ON p.prd_id = table1.prd_id\n;";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                popPrd.setPrd_id(rs.getInt(1));
                popPrd.setPrd_name(rs.getString(2));
                popPrd.setPrd_ava(rs.getString(3));
                popPrd.setBrd_id(rs.getInt(4));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return popPrd;
    }

    public ProductBrand getBrandByBrdId(String brd_id) {
        ProductBrand brd = new ProductBrand();
        String query = "SELECT * FROM `product_brand` WHERE brd_id = " + brd_id;
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                brd.setBrd_id(rs.getInt(1));
                brd.setBrd_name(rs.getString(2));
                brd.setBrd_logo(rs.getString(3));
                brd.setBrd_phoneNum(rs.getString(4));
                brd.setBrd_address(rs.getString(5));
                brd.setBrd_webAddress(rs.getString(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return brd;
    }

    public List<ProductType> getAllPrdType() {
        List<ProductType> list = new ArrayList<>();
        String query = "SELECT * FROM `product_type` order by tpe_name;";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductType(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4)));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<ProductType> getParentTpeList() {
        List<ProductType> list = new ArrayList<>();
        for (ProductType tpe : getAllPrdType()) {
            if (getLevel(tpe, 0) == 0) {
                list.add(tpe);
            }
        }
        return list;
    }

    public ProductType getTpeById(String tpe_id) {
        ProductType tpe = new ProductType();
        String query = "SELECT * FROM `product_type` WHERE tpe_id = " + tpe_id;
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                tpe.setTpe_id(rs.getInt(1));
                tpe.setBrd_id(rs.getInt(2));
                tpe.setTpe_name(rs.getString(3));
                tpe.setTpe_parentId(rs.getInt(4));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return tpe;
    }

    public List<ProductType> getTpeListByParentId(String tpe_parentId) {
        List<ProductType> list = new ArrayList<>();
        String query = "SELECT * FROM `product_type` where tpe_parentId = " + tpe_parentId + " order by tpe_name;";
        try {
            Connection conn = new ConnectDB().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductType(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4)));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int getLevel(ProductType tpe, int level) {
        if (tpe.getTpe_parentId() == 0) return level;
        else return getLevel(getTpeById(tpe.getTpe_parentId() + ""), level + 1);
    }

    public static void main(String[] args) throws UnsupportedEncodingException {
        ProductDAO dao = new ProductDAO();

        System.out.println(dao.getPrdBySearchString("Phiên bản"));


    }
}
