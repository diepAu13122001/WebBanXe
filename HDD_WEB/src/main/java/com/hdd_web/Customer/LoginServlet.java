package com.HDD.Customer;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.*;
import Entity.*;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
        try {
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            // Kiểm tra
            AccountDAO loginDao = new AccountDAO();
            Account a = loginDao.checkLogin(email, pass);
            if (a == null) {
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("Email: " + email + "; password: "+pass);
            }
//                response.sendRedirect("index.jsp");
            else {
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("Email: " + email + "; password: "+pass);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
//        String name=request.getParameter("email");
//        response.sendRedirect("https://www.google.co.in/#q="+name);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doDelete(req, resp);
    }
}