/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.assignment3.controllers;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import quoctm.assignment3.registration.RegistrationError;

/**
 *
 * @author SE130297
 */
@WebServlet(name = "validationController", urlPatterns = {"/validationController"})
public class validationController extends HttpServlet {

    private final String COURSE_PAGE = "assignment3_CourseForm.jsp";
    private final String DEFAULT_PAGE = "assignment3_CourseForm.html";
    private final String SHOW_PAGE = "show.jsp";
    private final String ERROR_PAGE = "assignment3_CourseForm.jsp";

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
            throws ServletException, IOException, NullPointerException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = DEFAULT_PAGE;
        String errFullName = "";
        String errAge = "";
        RegistrationError re = new RegistrationError();
        boolean foundErr = false;
        Pattern charExpression = Pattern.compile("^[a-zA-Z ]+$");
        try {
            String txtFullname = request.getParameter("txtFullname");
            String txtAge = request.getParameter("txtAge");
            HttpSession session = request.getSession(false);
            if (txtFullname.isEmpty()) {
                errFullName = "Khoong duoc de trong fullname";
                session.setAttribute("errFullName", errFullName);
                url = ERROR_PAGE;
                return;
            }
            if (!charExpression.matcher(txtFullname).find()) {
                errFullName = "Không có số";
                session.setAttribute("errFullName", errFullName);
                url = ERROR_PAGE;
                return;
            }
//            System.out.println("AGE: " + txtAge);
            if (charExpression.matcher(txtAge).find()) {
                errAge = "Khoong duoc de trong AGE";
                session.setAttribute("errAge", errAge);
                url = ERROR_PAGE;
                System.out.println("False");
                return;
            } else {
                System.out.println("true");
            }
        } finally {
            response.sendRedirect(url);
//    request
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
