<%-- 
    Document   : AuthoritySendKeys
    Created on : 4 Nov, 2019, 3:46:17 PM
    Author     : Poojitha
--%>

<%@page import="com.gcloud.utility.SendingMails"%>
<%@page import="com.gcloud.db.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.gcloud.utility.AccessKeyGenerations"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
String patientEmail = request.getParameter("patientEmail");
String reportname = request.getParameter("reportname");
String hspEmail = request.getParameter("hspEmail");
String status = "Sent";
AccessKeyGenerations gsk = new AccessKeyGenerations();
char spacerChar = 'D';
String downloadkey = gsk.randomUUID(31, 0, spacerChar);

Connection con = null;
PreparedStatement ps = null;
try {
        con = DBConnection.getDBConnection();
        String sqlQuery = "update filerequest set sts = ?, accesKey = ? where id = ?";
        ps = con.prepareStatement(sqlQuery);
        ps.setString(1, status);
        ps.setString(2, downloadkey);
        ps.setInt(3, id);
        int no = ps.executeUpdate();
        if(no>0){
        String sub ="Mail from G_Could to download key";
        String body="This is kattamma,  Your Report "+reportname+" , you can download your report by using this key "+downloadkey;
        System.out.println(sub+" Body "+body);
        boolean flag = SendingMails.sendMail(body, sub, patientEmail, patientEmail);
        boolean flag1 = SendingMails.sendMail(body, sub, hspEmail, hspEmail);
        if(flag==true){
        response.sendRedirect("filerequest.jsp?msg=true");
        }else{
        response.sendRedirect("filerequest.jsp?msg=failed");
        }
        }
    } catch (Exception e) {
        System.out.println("Error "+e.getMessage());
    }finally{
try {
        ps.close();
        con.close();
    } catch (Exception e) {
    }
}

%>
