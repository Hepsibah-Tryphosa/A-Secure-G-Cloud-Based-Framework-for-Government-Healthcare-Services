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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Poojitha
 */
public class PatientRegisterAction extends HttpServlet {

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
        String patientName = request.getParameter("pname");
        String pemail = request.getParameter("pemail");
        String ppswd = request.getParameter("ppswd");
        String mobile = request.getParameter("mobile");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String status = "waiting";
        String accessKey = "NotGenerated";
        out.println("i know Your Password " + ppswd);
        out.println("i know Your Password " + mobile);

        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getDBConnection();
            String sqlQuery = "insert into patientregister(patientname,email,pswd,mobile,dob,gender,state,country,status,accesskey) values(?,?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, patientName);
            ps.setString(2, pemail);
            ps.setString(3, ppswd);
            ps.setString(4, mobile);
            ps.setString(5, dob);
            ps.setString(6, gender);
            ps.setString(7, state);
            ps.setString(8, country);
            ps.setString(9, status);
            ps.setString(10, accessKey);
            int count = ps.executeUpdate();
            if (count > 0) {
                response.sendRedirect("PatientRegister.jsp?msg=success");
            } else {
                response.sendRedirect("PatientRegister.jsp?msg=failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("PatientRegister.jsp?msg=exist");
        }finally{
            try {
                ps.close();
                con.close();
            } catch (Exception e) {
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
