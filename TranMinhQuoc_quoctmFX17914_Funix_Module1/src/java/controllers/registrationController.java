/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SE130297
 */
@WebServlet(name = "registrationController", urlPatterns = {"/registrationController"})
public class registrationController extends HttpServlet {

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
        String btnOk = request.getParameter("btnOk");
        String txtName = request.getParameter("txtName");
        String txtSurname = request.getParameter("txtSurname");
        String txtPhoneNumber = request.getParameter("txtPhoneNumber:");
        String txtEmail = request.getParameter("txtEmail");
        String chkLanguage1 = request.getParameter("chkLanguage1");
        String chkLanguage2 = request.getParameter("chkLanguage2");
        String chkLanguage3 = request.getParameter("chkLanguage3");

        RequestDispatcher rd = request.getRequestDispatcher("assignment3_view.jsp");
        String fullname = txtName + " " + txtSurname;
        String phoneNumber = txtPhoneNumber;
        String email = txtEmail;
        
        request.setAttribute("fullname", fullname);
        request.setAttribute("phoneNumber", phoneNumber);
        request.setAttribute("email", email);
        request.setAttribute("chkLanguage1", chkLanguage1);
        request.setAttribute("chkLanguage2", chkLanguage2);
        request.setAttribute("chkLanguage3", chkLanguage3);
    

        rd.forward(request, response);
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
