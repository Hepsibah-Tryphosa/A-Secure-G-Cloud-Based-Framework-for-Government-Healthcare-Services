<%@page import="com.gcloud.db.DBConnection"%>
<%@page import="com.gcloud.db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> G-Cloud-Based Framework </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
        <div class="py-1 bg-black top">
            <div class="container">
                Welcome G-Cloud Based Framework for EHR
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="HSPHome.jsp.jsp"> G-Cloud-Based Framework </a>
                <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav nav ml-auto">
                        <li class="nav-item"><a href="HSPHome.jsp" class="nav-link"><span>HSP Home</span></a></li>
                        <li class="nav-item"><a href="searchfile.jsp" class="nav-link"><span>Search File</span></a></li>
                        <li class="nav-item"><a href="accessfile.jsp" class="nav-link"><span>Access File</span></a></li>
                        <li class="nav-item"><a href="index.jsp" class="nav-link"><span>Logout</span></a></li>
                        <!--<li class="nav-item"><a href="EHCloud.jsp" class="nav-link"><span>E-H Cloud</span></a></li>
                        <li class="nav-item"><a href="Authority.jsp" class="nav-link"><span>Authority</span></a></li>
                        <li class="nav-item cta mr-md-2"><a href="appointment.html" class="nav-link">Appointment</a></li>-->
                    </ul>
                </div>
            </div>
        </nav>

        <section class="hero-wrap js-fullheight" style="background-image: url('images/bg_3.jpg');" data-section="home" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
                    <div class="col-md-6 pt-5 ftco-animate">
                        <div class="mt-5">
                            <%
                                String hsprole = session.getAttribute("hsprole").toString();
                                String hspName = session.getAttribute("hspName").toString();
                                String hspemail = session.getAttribute("hspemail").toString();


                            %>
                            <span class="subheading"></span>
                            <h3 class="mb-4"> Key Generated Files </h3>
                            <!--<p class="mb-4">Within the literature, we have witnessed in the healthcare sector, the growing demand for and adoption of software development in the cloud environment to cope with and fulfill current and future demands in healthcare services. In this paper, we propose a flexible, secure, cost effective, and privacypreserved cloud-based framework for the healthcare environment. We propose a secure and efficient framework for the government EHR system, in which fine-grained access control can be afforded based on multi-authority ciphertext attribute-based encryption (CP-ABE), together with a hierarchical structure, to enforce access control policies. The proposed framework will allow decision makers in the Kingdom of Saudi Arabia to develop the healthcare sector and to benefit from the existing e-government cloud computing platform ?Yasser,? which is responsible for delivering shared services through a highly efficient, reliable, and safe environment. This framework aims to provide health services and facilities from the government to citizens (G2C).  </p>
                            -->

                            <table border="2" width="1" cellspacing="1" cellpadding="1" width="800">
                                <thead>
                                    <tr style="font-size: larger;color: #0056b3;background: #dee2e6">
                                        <th>S.No</th>
                                        <th>Patient Email</th>
                                        <th>File Name  </th>
                                        <th>Accessibility</th>
                                        <th>&nbsp;&nbsp;&nbsp;&nbsp;Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                        <th>Send</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <%                                Connection con = null;
                                        PreparedStatement ps = null;
                                        ResultSet rs = null;
                                        int sno = 0;
                                        try {
                                            con = DBConnection.getDBConnection();
                                            String sqlQuery = "select *from filerequest where hspemail = ?";
                                            ps = con.prepareStatement(sqlQuery);
                                            ps.setString(1, hspemail);
                                            rs = ps.executeQuery();
                                            while (rs.next()) {
                                                int id = rs.getInt("id");
                                                String patientname = rs.getString("patientname");
                                                sno++;
                                                String sts = rs.getString("sts");
                                                String reportname = rs.getString("reportname");
                                                String accesKey = rs.getString("accesKey");
                                                int fileID = rs.getInt("fileid");


                                    %>
                                    <tr  style="font-size: larger;color: blueviolet;background: #dee2e6">
                                        <td><%=sno%></td>
                                        <td><%=patientname%></td>
                                        <td><%=reportname%></td>
                                        <td><%=sts%></td>
                                        <td><%=accesKey%></td>
                                        <td><%
                                            if(sts.equalsIgnoreCase("Sent")){
                                            %>
                                            <a href="DownloadHSP.jsp?id=<%=fileID%>&reportname=<%=reportname%>">Download</a></td>
                                            <%
                                            }else{
                                            out.println("Key Not Generated");
                                            }
                                            %>
                                            

                                    </tr>
                                    <%


                                    %>


                                    <%                                    }
                                        } catch (Exception e) {
                                            System.out.println("Error " + e.getMessage());
                                        } finally {
                                            try {
                                                rs.close();
                                                ps.close();
                                                con.close();
                                            } catch (Exception e) {
                                            }
                                        }


                                    %>
                                    <%                         String msg = request.getParameter("msg");
                                        if (msg != null && msg.equalsIgnoreCase("notexist")) {
                                            out.println("<font color='green'>Email id and password Not Register please register first </font>");
                                        } else if (msg != null && msg.equalsIgnoreCase("notactivated")) {
                                            out.println("<font color='RED'>Email id Not Activated</font>");
                                        } else if (msg != null && msg.equalsIgnoreCase("exist")) {
                                            out.println("<font color='RED'>Registration Faild Due to email already exist</font>");
                                        }

                                    %>
                                    </p>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    </section>




                                    <!-- loader -->
                                <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


                                <script src="js/jquery.min.js"></script>
                                <script src="js/jquery-migrate-3.0.1.min.js"></script>
                                <script src="js/popper.min.js"></script>
                                <script src="js/bootstrap.min.js"></script>
                                <script src="js/jquery.easing.1.3.js"></script>
                                <script src="js/jquery.waypoints.min.js"></script>
                                <script src="js/jquery.stellar.min.js"></script>
                                <script src="js/owl.carousel.min.js"></script>
                                <script src="js/jquery.magnific-popup.min.js"></script>
                                <script src="js/aos.js"></script>
                                <script src="js/jquery.animateNumber.min.js"></script>
                                <script src="js/scrollax.min.js"></script>
                                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
                                <script src="js/google-map.js"></script>

                                <script src="js/main.js"></script>

                                </body>
                                </html>