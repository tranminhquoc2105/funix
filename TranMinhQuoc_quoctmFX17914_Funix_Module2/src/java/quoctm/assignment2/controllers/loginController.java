/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.assignment2.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SE130297
 */
@WebServlet(name = "loginController", urlPatterns = {"/loginController"})
public class loginController extends HttpServlet {

//    private final String ERROR_PAGE = "assignment2_login.jsp";
    private final String HOME_PAGE = "assignment2_welcome.jsp";
//    private final String DEFAULT_PAGE = "assignment2_login.html";
    private final String DEFAULT_PAGE = "assignment2_login.jsp";
    private final String VALIDATION_PAGE = "assignment3_validation.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = DEFAULT_PAGE;
        String messErr = "";
        try {
            String username = request.getParameter("txtUsername");
            String password = request.getParameter("txtPassword");
            HttpSession session = request.getSession();
            if (username.equals("system") && password.equals("java")) {
                session.setAttribute("username", username);
                url = HOME_PAGE;
            } else if (username.equals("admin") && password.equals("passw0rd")) {
                session.setAttribute("username", username);
                url = VALIDATION_PAGE;
            } else {
                messErr = "TÀI KHOẢN / MẬT KHẨU KHÔNG ĐÚNG, VUI LÒNG ĐĂNG NHẬP LẠI";
                session.setAttribute("messErr", messErr);
                url = DEFAULT_PAGE;
            }
        } finally {
//            RequestDispatcher rd = request.getRequestDispatcher("assignment2_welcome");
//            rd.forward(request, response);
            response.sendRedirect(url);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
