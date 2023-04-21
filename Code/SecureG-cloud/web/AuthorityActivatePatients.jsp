<%-- 
    Document   : AuthorityActivatePatients
    Created on : 2 Nov, 2019, 5:38:21 PM
    Author     : Poojitha
--%>

<%@page import="com.gcloud.db.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.gcloud.utility.AccessKeyGenerations"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String email = request.getParameter("email");
        AccessKeyGenerations gsk = new AccessKeyGenerations();
        char spacerChar = 'D';
        String key = gsk.randomUUID(15, 0, spacerChar);
        String sts = "Activated";
        Connection con = null;
        PreparedStatement ps = null;        
        try {
                con = DBConnection.getDBConnection();
                String sqlQuery = "update patientregister set status=?,accesskey=? where email = ?";
                ps = con.prepareStatement(sqlQuery);
                ps.setString(1, sts);
                ps.setString(2, key);
                ps.setString(3, email);
                int no = ps.executeUpdate();
                response.sendRedirect("Authoritypatientdetails.jsp");
            } catch (Exception e) {
                System.out.println("Error at "+e.getMessage());
            }finally{
        try {
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        %>
    </body>
</html>
