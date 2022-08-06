/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login_Process;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SE130297
 */
public class loginProcess extends HttpServlet {

    MapClass map1 = new MapClass();
    public static ArrayList logged = new ArrayList();
    public static int a[] = new int[5];
    int i = 0;
    public static int nn = 0;
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
        HttpSession session = request.getSession();
        show s = new show();
        String passwordPattern = "^(?=.*\\d+.*)(?=.*[A-Z]+.*)\\w{8,300}$";
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        String action = request.getParameter("action");
        int num = Integer.parseInt(action);
        nn = num;
        String users = request.getParameter("users");
        String passwords = request.getParameter("passwords");
        RequestDispatcher rd;
        String userD = "system";
        String passD = "java";
        map1.saveUser(userD, passD);
        //Registration
        if (num == 2) {
            if (!users.matches("[a-zA-Z0-9]{6,300}")) { //Check special characters of username
                out.print("<html><h3 style='color:red'>Username: contains no special characters such as $#@%^&*, the length must be > 6</h3>");
                rd = request.getRequestDispatcher("signup.jsp");
                rd.include(request, response);
                out.print("</html>");
            } else if (!passwords.matches(passwordPattern)) {
                out.print("<html><h3 style='color:red'>Password: must contain at least one capital letter, one digit, the length must be > 8</h3>");
                rd = request.getRequestDispatcher("signup.jsp");
                rd.include(request, response);
                out.print("</html>");
            } else {
                if (map1.containKey(users)) { //Check duplicate username map.containKey(users)
                    out.print("<html><h3 style='color:red'>This name has existed</h3>");
                    rd = request.getRequestDispatcher("signup.jsp");
                    rd.include(request, response);
                    out.print("</html>");
                } else {
                    map1.saveUser(users, passwords);
                    out.print("<html><h3 style='color:red'>Successed!!!</h3>");
                    rd = request.getRequestDispatcher("signup.jsp");
                    rd.include(request, response);
                    out.print("</html>");
                }
            }
        } else //Check login
        if (num == 1) {
            if (!map1.containKey(user) || !map1.getMap().get(user).equals(password)) {
                out.print("<html><h3 style='color:red'>Wrong username/password</h3>");
                rd = request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
                out.print("</html>");
            } else {
                s.setUser(user);
                s.setPass(password);
                session.setAttribute("user", user);
                session.setAttribute("password", password);
                if (!logged.contains(user)) {
                    logged.add(user);
                    a[i] = 1;
                    i++;
                } else {
                    for(int j = 0; j < logged.size(); j++){
                        if(logged.get(j).equals(user)){
                            a[j] += 1;
                        }
                    }
                }
                rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
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
