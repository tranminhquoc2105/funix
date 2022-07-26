/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SE130297
 */
public class DispatchController extends HttpServlet {

    private final String LOGIN_PAGE = "login.html";
    private final String CREATE_BLOG_PAGE = "createBlog.jsp";

    private final String LOGIN_SERVLET = "LoginServlet";
    private final String LOGOUT_SERVLET = "LogoutServlet";
    private final String VIEW_BLOG_SERVLET = "getListBlogServlet";
    private final String CREATE_BLOG_SERVLET = "CreateBlogServlet";
    private final String VIEW_DETAIL_BLOG_SERVLET = "ViewDetailBlogServlet";
    private final String UPDATE_BLOG_SERVLET = "UpdateBlogSerlvet";
    private final String VIEW_DETAIL_BLOG_SERVLET_V2 = "ViewDetailBlogV2Servlet";
 private final String    WIEW_ASSSIGNEMT = "ViewController";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String button = request.getParameter("btAction");
        String url = LOGIN_PAGE;
        try {
            if (button.equals("Login")) {
                url = LOGIN_SERVLET;
            } else if (button.equals("Logout")) {
                url = LOGOUT_SERVLET;
            } else if (button.equals("View")) {
                url = VIEW_BLOG_SERVLET;
            } else if (button.equals("Create_Blog")) {
                url = CREATE_BLOG_PAGE;
            } else if (button.equals("Create")) {
                url = CREATE_BLOG_SERVLET;
            } else if (button.equals("Update Blog")) {
                url = VIEW_DETAIL_BLOG_SERVLET; 
            } else if (button.equals("Update")) {
                url = UPDATE_BLOG_SERVLET;
            }
            else if (button.equals("Detail Blog")) {
                url = VIEW_DETAIL_BLOG_SERVLET_V2;
            }else if(button.equals("Asig")){
                url = WIEW_ASSSIGNEMT;
            }

        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
            out.close();
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
