 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gcloud.actions;

import com.gcloud.db.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Poojitha
 */
public class AASLoginCheck extends HttpServlet {

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
        String Email = request.getParameter("email");
        String pswd = request.getParameter("pswd");
        
        Connection con = null;
        PreparedStatement ps = null;
         ResultSet rs = null;
        String status = null;
        String aaname = null;
        HttpSession hs = request.getSession();
        try  {
            con = DBConnection.getDBConnection();
            String sqlQury = "select *  from aasregister where email = ? and pswd = ?";
            ps = con.prepareStatement(sqlQury);
            ps.setString(1, Email);
            ps.setString(2, pswd);
            rs = ps.executeQuery();
            if(rs.next()){
            aaname = rs.getString("patientname");
            hs.setAttribute("aaName", aaname);
            hs.setAttribute("aaEmail", Email);
            status = rs.getString("status");
            if(status.equalsIgnoreCase("Activated")){
            response.sendRedirect("AASHome.jsp?msg=success");
            }else if(status.equalsIgnoreCase("waiting")){
             response.sendRedirect("AAS.jsp?msg=notactivated");
            }
            }else{
            response.sendRedirect("AAS.jsp?msg=failed");
            }
           
        }catch(Exception ex){
            
        ex.printStackTrace();
        response.sendRedirect("AAS.jsp?msg=failed");
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
