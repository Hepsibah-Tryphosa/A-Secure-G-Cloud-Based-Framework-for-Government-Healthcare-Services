<%@page import="com.gcloud.db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <script>
            function validateForm() {
                var x = document.forms["myForm"]["email"].value;
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
                    alert("Not a valid e-mail address");
                    return false;
                }
            }
        </script>
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
	      <a class="navbar-brand" href="fileupload.jsp"> G-Cloud-Based Framework </a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
                    <li class="nav-item"><a href="PatientHome.jsp" class="nav-link"><span>Patient Home</span></a></li>
	          <li class="nav-item"><a href="fileupload.jsp" class="nav-link"><span>File Upload</span></a></li>
	          <li class="nav-item"><a href="filedetails.jsp" class="nav-link"><span>File Details</span></a></li>
	          <li class="nav-item"><a href="index.jsp" class="nav-link"><span>Logout</span></a></li>
	          <!--<li class="nav-item cta mr-md-2"><a href="appointment.html" class="nav-link">Appointment</a></li>-->
	        </ul>
	      </div>
	    </div>
	  </nav>
	  
	  <section class="hero-wrap js-fullheight" style="background-image:url(images/about.jpg);" data-section="home" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 pt-5 ftco-animate">
          	<div class="mt-5">
          		<span class="subheading"></span>
	            <h3 class="mb-4">PHR file View </h3>
                    <p class="mb-4">
                    <table border="2" width="1" cellspacing="1" cellpadding="1" width="800">
                        <thead>
                            <tr style="font-size: larger;color: #0056b3;background: #dee2e6">
                                <th>S.No</th>
                                <th>Email</th>
                                <th>File Name  </th>
                                <th>Accessibility</th>
                                <th>Date</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                String pemail = session.getAttribute("pemail").toString();
                                Connection con = null;
                                PreparedStatement ps = null;
                                ResultSet rs = null;
                                int sno = 0;
                                try {
                                        con = DBConnection.getDBConnection();
                                        String sqlQuery = "select *from patientfiles where pemail = ?";
                                        ps = con.prepareStatement(sqlQuery);
                                        ps.setString(1, pemail);
                                        rs = ps.executeQuery();
                                        while(rs.next()){
                                            sno++;
                                        %>
                            <tr  style="font-size: larger;color: blueviolet;background: #dee2e6">
                                <td><%=sno%></td>
                                <td><%=rs.getString("pemail")%></td>
                                <td><%=rs.getString("filename")%></td>
                                <td><%=rs.getString("accessibility")%></td>
                                <td><%=rs.getString("cdate")%></td>
                               
                            </tr>
                                        
                            <%
                                        }
                                    } catch (Exception e) {
                                    System.out.println("Error "+e.getMessage());
                                    }finally{
                                    try {
                                            rs.close();
                                            ps.close();
                                            con.close();
                                        } catch (Exception e) {
                                        }
}
                                
                            
                            %>
                            
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>

                   
                   
                    </p>
	            
            </div>
          </div>
        </div>
      </div>
    </section>

		
    <footer class="ftco-footer ftco-section img" style="background-image: url(images/footer-bg.jpg);">
    	<div class="overlay"></div>
      <div class="container-fluid px-md-5">
        <div class="row mb-5">
         
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
	
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://google.com" target="_blank">Alex Hales</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

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