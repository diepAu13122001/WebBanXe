package com.HDD.Customer;

import DAO.ProductDAO;
import Entity.Product;
import Entity.ProductDetail;

import java.io.*;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ProductDAO productDAO = new ProductDAO();

        List<Product> productList = productDAO.getAllProduct();
        List<ProductDetail> productDetailList = productDAO.getDetailByPrdId("pr021");
        request.setAttribute("allProduct",productList );
        request.setAttribute("productDetail", productDetailList);

        request.getRequestDispatcher("/pages/cus_products.jsp").forward(request,response);
    }

    public void destroy() {
    }
}