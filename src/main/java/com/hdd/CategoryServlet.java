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

@WebServlet(name = "CategoryServlet", value = "/Category")
public class CategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        ProductDAO productDAO = new ProductDAO();
        List<Product> productList = productDAO.getAllProduct();
        List<ProductBrand> allBrand = productDAO.getAllBrand();
        List<ProductType> parentTpeList = productDAO.getParentTpeList();
        String tpe_id = request.getParameter("tpe_id");
        String brd_id = request.getParameter("brd_id");

        List<ProductType> typeListByParentId = productDAO.getTpeListByParentId(tpe_id);
        List<Product> prdListByBrdId = productDAO.getPrdListByBrdId(brd_id, productList);
        List<Product> prdListByTpeId = productDAO.getPrdListByTpeId(tpe_id, prdListByBrdId);
        String getTitle = productDAO.getBrandByBrdId(brd_id).getBrd_name() +" - "+ productDAO.getTpeById(tpe_id).getTpe_name();

        request.setAttribute("allProduct", prdListByTpeId);
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
