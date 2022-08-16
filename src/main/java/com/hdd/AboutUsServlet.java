package com.hdd;

import DAO.HddDAO;
import Entity.Showroom;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AboutUsServlet", value = "/AboutUs")
public class AboutUsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HddDAO hddDAO = new HddDAO();
        List<Showroom> allShowroom = hddDAO.getAllShowroom();

        request.setAttribute("allShowroom", allShowroom);
        request.getRequestDispatcher("cus_aboutUs.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
