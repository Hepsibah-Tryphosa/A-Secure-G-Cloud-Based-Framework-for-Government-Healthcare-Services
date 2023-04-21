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
public class PatientLoginCheck extends HttpServlet {

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
        String patientEmail = request.getParameter("email");
        String pswd = request.getParameter("pswd");
        HttpSession hs = request.getSession();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String status = null;
        try  {
            con = DBConnection.getDBConnection();
            String sqlQury = "select status from patientregister where email = ? and pswd = ?";
            ps = con.prepareStatement(sqlQury);
            ps.setString(1, patientEmail);
            ps.setString(2, pswd);
            rs = ps.executeQuery();
            if(rs.next()){
            status = rs.getString(1);
            if(status.equalsIgnoreCase("Activated")){
                hs.setAttribute("pemail", patientEmail);
            response.sendRedirect("PatientHome.jsp?msg=success");
            }else{
             response.sendRedirect("Patient.jsp?msg=notactivated");
            }
            }else{
            response.sendRedirect("Patient.jsp?msg=failed");
            }
            
            
        }catch(Exception ex){
            
        ex.printStackTrace();
        response.sendRedirect("Patient.jsp?msg=notexist");
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
