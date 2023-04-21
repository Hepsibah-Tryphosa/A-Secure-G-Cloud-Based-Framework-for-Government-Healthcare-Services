/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gcloud.actions;

import com.gcloud.db.DBConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Poojitha
 */
@MultipartConfig
public class PatientFileUpload extends HttpServlet { 
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String filename = request.getParameter("filename");
        String hsptl = request.getParameter("Hospital");
        String dctr = request.getParameter("Doctor");
        String srgen = request.getParameter("Surgen");
        String insurance = request.getParameter("Insurance");
        Part filePart = request.getPart("file");
        InputStream is = filePart.getInputStream();
        //String fileName = filePart.getSubmittedFileName();
        HttpSession hs = request.getSession();
        String pemail = hs.getAttribute("pemail").toString();
        
        System.out.println("File Name "+filename);
        System.out.println(hsptl+"<->"+dctr+"<->"+srgen+"<->"+insurance);
        StringBuffer accessPermission = new StringBuffer();
        if (hsptl!=null){
        accessPermission.append(hsptl+" ");        
        }
        if(dctr!=null){
        accessPermission.append(dctr+" ");
        }
        if(srgen!=null){
        accessPermission.append(srgen+" ");
        }
        if(insurance!=null){
        accessPermission.append(insurance+" ");
        }
        
        String accessity = accessPermission.toString();
        
       // String [] slice = s1.split(" ");
        //System.out.println("Kattamma kathi "+slice[0]);
        
        Connection con = null;
        PreparedStatement ps = null;        
        java.sql.Date cDate = new java.sql.Date(new java.util.Date().getTime());
        try  {
            
            con = DBConnection.getDBConnection();
            String sqlQuery = "insert into patientfiles(pemail,filename,accessibility,cdate,cfile) values(?,?,?,?,?)";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, pemail);
            ps.setString(2, filename);
            ps.setString(3,accessity);
            ps.setDate(4, cDate);
            ps.setBinaryStream(5, is);
            int no = ps.executeUpdate();
            if(no>0){
            response.sendRedirect("fileupload.jsp?msg=success");
            }else{
            response.sendRedirect("fileupload.jsp?msg=failed");
            }
           is.close();
        }catch(Exception ex){
            System.out.println(" Error at "+ex.getMessage());
            response.sendRedirect("fileupload.jsp?msg=failed");
        }finally{
            try {
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
