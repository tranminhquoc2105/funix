/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    private final String LOGIN_PAGE = "login.jsp";
    private final String WELCOME_PAGE = "home.jsp";
    private final String ERROR_PAGE = "login.jsp";

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
        String url = LOGIN_PAGE;
        try {
            String username = request.getParameter("txtUsername");
            String password = request.getParameter("txtPassword");
            HttpSession session = request.getSession();
            Map<String, String> mapLogin = new HashMap<String, String>();
//            --------------------------------------------------------------------

            mapLogin.put("admin", "123");
            mapLogin.put("user", "1234");
            mapLogin.put("guest", "1235");
//            mapLogin.put("usernamekey", username);
//            mapLogin.put("passwordkey", password);

//            if (!username.isEmpty() && !password.isEmpty()) {
            boolean checkLogin = mapLogin.containsKey(username);
            System.out.println(checkLogin);
            if (checkLogin == true) {
                String passCheck = mapLogin.get(username);
                System.out.println(passCheck);
                if (password.equals(passCheck)) {
                    session.setAttribute("USERNAME", username);
                    url = WELCOME_PAGE;
                    System.out.println(url);
                } else {
                    String messErr = "TÀI KHOẢN KHÔNG TỒN TẠI, VUI LÒNG ĐĂNG NHẬP LẠI";
                    session.setAttribute("messErr", messErr);
                    url = ERROR_PAGE;
                }
            }

//            if (mapLogin.get("usernamekey").equals("admin")
//                    && mapLogin.get("passwordkey").equals("123")) {
//                session.setAttribute("USERNAME", mapLogin.get("usernamekey"));
//                url = WELCOME_PAGE;
//            } else {
//                String messErr = "TÀI KHOẢN / MẬT KHẨU KHÔNG ĐÚNG, VUI LÒNG ĐĂNG NHẬP LẠI";
//                session.setAttribute("messErr", messErr);
//                url = ERROR_PAGE;
//            }
//            --------------------------------------------------------------------
//            mapLogin.put("admin", "123456");
//            if(mapLogin.get("admin").equals(username) && mapLogin.values){
//            if(username)
//        }
    }

    
        finally {
//            RequestDispatcher rd = request.getRequestDispatcher(url);
//            rd.forward(request, response);
            response.sendRedirect(url);
        System.out.println("afer: " + url);
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
