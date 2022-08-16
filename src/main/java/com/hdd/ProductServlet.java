package com.hdd;

import DAO.ProductDAO;
import Entity.Product;
import Entity.ProductBrand;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/Product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String prd_id = request.getParameter("prd_id");

        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getPrdById(prd_id);
        List<String[]> prdColor = productDAO.getColorListByPrdId(prd_id);
        List<String[]> prdDetails = productDAO.getDetailListByPrdId(prd_id);
        ProductBrand brdById = productDAO.getBrandByBrdId(product.getBrd_id()+"");
        List<Product> popList = productDAO.getPopList(6);

        request.setAttribute("product", product);
        request.setAttribute("prdColors", prdColor);
        request.setAttribute("prdDetails", prdDetails);
        request.setAttribute("brand", brdById);
        request.setAttribute("popList", popList);

        request.getRequestDispatcher("cus_product.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
