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

@WebServlet(name = "ProductsServlet", value = "/Products")
public class ProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        ProductDAO productDAO = new ProductDAO();
        List<Product> productList = productDAO.getAllProduct();
        List<ProductBrand> allBrand = productDAO.getAllBrand();
        List<ProductType> parentTpeList = productDAO.getParentTpeList();
        String tpe_id = request.getParameter("tpe_id");
        List<ProductType> typeListByParentId = productDAO.getTpeListByParentId(tpe_id);
        String getTitle = "Tất cả sản phẩm";

        request.setAttribute("allProduct", productList);
        request.setAttribute("allBrand", allBrand);
        request.setAttribute("parentTpeList", parentTpeList);
        request.setAttribute("typeListByParentId", typeListByParentId);
        request.setAttribute("getTitle", getTitle);

        request.getRequestDispatcher("cus_products.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
