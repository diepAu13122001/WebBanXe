package com.hdd;

import DAO.ProductDAO;
import Entity.Product;
import Entity.ProductBrand;
import Entity.ProductType;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/Search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String search =request.getParameter("search");
        String tpe_id = request.getParameter("tpe_id");

        ProductDAO productDAO = new ProductDAO();
        List<Product> productList = productDAO.getAllProduct();
        List<ProductBrand> allBrand = productDAO.getAllBrand();
        List<ProductType> parentTpeList = productDAO.getParentTpeList();
        String getTitle = "Kết quả tìm kiếm '"+ search + "'";
        List<ProductType> typeListByParentId = productDAO.getTpeListByParentId(tpe_id);


        request.setAttribute("allBrand", allBrand);
        request.setAttribute("parentTpeList", parentTpeList);
        request.setAttribute("typeListByParentId", typeListByParentId);
        request.setAttribute("allProduct", productList);
        request.setAttribute("getTitle", getTitle);

        request.getRequestDispatcher("cus_products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
