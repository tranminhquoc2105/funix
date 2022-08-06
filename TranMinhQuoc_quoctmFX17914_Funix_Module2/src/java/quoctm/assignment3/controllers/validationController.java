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
    private final String SUCCESS_PAGE = "assignment2_welcome.jsp";
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
        String url = ERROR_PAGE;
        String txtFullname = request.getParameter("txtFullname");
        String txtAge = request.getParameter("txtAge");
        String ddlCountry = request.getParameter("ddlCountry");
        String[] soCourses = request.getParameterValues("soCourses");
        String[] language = request.getParameterValues("chk_language");

        RegistrationError errors = new RegistrationError();
        boolean foundErr = false;
        Pattern charExpression = Pattern.compile("^[a-zA-Z ]+$");
        Pattern numberExpression = Pattern.compile("^[0-9]+$");
        try {
            if (txtFullname.trim().isEmpty()) {
                foundErr = true;
                errors.setUserNameNullErr("Username not null");
            } else if (!charExpression.matcher(txtFullname).find()) {
                foundErr = true;
                errors.setUserNameCharErr("Not digit");
            }

//            System.out.println("AGE: " + age);
            if (txtAge != null) {
                if (!txtAge.trim().isEmpty()) {
                    int age = Integer.parseInt(txtAge);
                    if (!numberExpression.matcher(txtAge).find()) {
                        foundErr = true;
                        errors.setAgeCharErr("Khongo chua chu so");
                    } else {
                        if (age < 18 || age > 40) {
                            foundErr = true;
                            errors.setAgeRangeErr("Age: must be more than 18, and less than 40.");
                        }
                    }
                } else {
                    foundErr = true;
                    errors.setAgeNullErr("Age must not null");
                }
            } else {
                foundErr = true;
                errors.setAgeNullErr("Age must not null");
            }

            if (soCourses == null) {
                foundErr = true;
                errors.setCourseNullErr("Course have to choose");
            }

            if (ddlCountry == null) {
                foundErr = true;
                errors.setCountryNullErr("Country must be select, not select");
                System.out.println("Country: false");
            } else {
                System.out.println("country: " + ddlCountry);
                System.out.println("true");
            }

            if (language == null) {
                foundErr = true;
                errors.setLanguageNullErr("Language must chooose");
            }

            if (foundErr) {
                request.setAttribute("CREATEERRORS", errors);
            } else {
                url = SUCCESS_PAGE;
            }
//          
        } finally {
//            response.sendRedirect(url);
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
            out.close();
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
