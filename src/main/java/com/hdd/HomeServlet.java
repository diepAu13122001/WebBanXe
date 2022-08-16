package com.hdd;

import DAO.HddDAO;
import DAO.ProductDAO;
import Entity.Product;
import Entity.ProductBrand;
import Entity.Showroom;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        ProductDAO productDAO = new ProductDAO();
        List<Product> newestList = productDAO.getNewestProducts(6);
        List<ProductBrand> allBrand = productDAO.getAllBrand();
        Product mostPopPrd = productDAO.getMostPopPrd();
        String brdOfMostPopPrd = productDAO.getBrandByBrdId(mostPopPrd.getBrd_id()+"").getBrd_name();

        HddDAO hddDAO = new HddDAO();
        List<Showroom> allShowroom = hddDAO.getAllShowroom();

        request.setAttribute("newestList", newestList);
        request.setAttribute("allBrand", allBrand);
        request.setAttribute("mostPopPrd", mostPopPrd);
        request.setAttribute("brdOfMostPopPrd", brdOfMostPopPrd);
        request.setAttribute("allShowroom", allShowroom);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
