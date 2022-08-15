/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import quoctm.Blog.BlogDAO;
import quoctm.Blog.BlogDTO;
import quoctm.Date.fomatDate;

/**
 *
 * @author SE130297
 */
@WebServlet(name = "UpdateBlogSerlvet", urlPatterns = {"/UpdateBlogSerlvet"})
public class UpdateBlogSerlvet extends HttpServlet {

    private final String FAIL_PAGE = "detail.jsp";
    private final String SUCCESS_PAGE = "blog.jsp";

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

        String id = request.getParameter("txtID");
        String txtTitle = request.getParameter("txtTitle");
        String txtSummary = request.getParameter("txtSummary");
        String txtContent = request.getParameter("txtContent");
        String txtAuthor = request.getParameter("txtAuthor");
        String txtTime = request.getParameter("txtTime");

        String url = FAIL_PAGE;
        BlogDAO dao = new BlogDAO();
        fomatDate fd = new fomatDate();
        try {
            String dateFomat = fd.fomatDate(txtTime);

            boolean check = dao.updateBlog(txtTitle, txtSummary, txtContent, dateFomat, txtAuthor, id);
            if (check) {
                url = "DispatchController"
                        + "?btAction=View";
            }
        } catch (SQLException ex) {
            Logger.getLogger(UpdateBlogSerlvet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(UpdateBlogSerlvet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(UpdateBlogSerlvet.class.getName()).log(Level.SEVERE, null, ex);
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
