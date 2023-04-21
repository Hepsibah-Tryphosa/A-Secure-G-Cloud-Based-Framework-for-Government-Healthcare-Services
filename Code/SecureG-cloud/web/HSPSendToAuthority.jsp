<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.gcloud.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.IOException"%>
<%

        String id = request.getParameter("id");
        String patientname = request.getParameter("patientname");
        String reportname = request.getParameter("reportname");
        String cdate = request.getParameter("cdate");
        String hspName = request.getParameter("hspName");
        String hsRole = request.getParameter("hsRole");
        String hspemail = request.getParameter("hspemail");
        String sts = "waiting";
        String accesKey = "NotGenerated";

        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getDBConnection();
            String sqlQuery = "insert into filerequest(fileid,patientname,reportname,cdate,hspName,hsRole,hspemail,sts,accesKey) values(?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, id);
            ps.setString(2, patientname);
            ps.setString(3, reportname);
            ps.setString(4, cdate);
            ps.setString(5, hspName);
            ps.setString(6, hsRole);
            ps.setString(7, hspemail);
            ps.setString(8, sts);
            ps.setString(9, accesKey);
            int count = ps.executeUpdate();
            if (count > 0) {
                response.sendRedirect("hspsearchfiledetails.jsp?msg=success");
            } else {
                response.sendRedirect("hspsearchfiledetails.jsp?msg=failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("hspsearchfiledetails.jsp?msg=failed");
        } finally {
            try {
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }

    
%>

