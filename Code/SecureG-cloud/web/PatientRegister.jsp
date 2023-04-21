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
                <a class="navbar-brand" href="index.jsp"> G-Cloud-Based Framework </a>
                <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav nav ml-auto">
                        <li class="nav-item"><a href="index.jsp" class="nav-link"><span>Home</span></a></li>
                        <li class="nav-item"><a href="Patient.jsp" class="nav-link"><span>Patient</span></a></li>
                        <li class="nav-item"><a href="HSP.jsp" class="nav-link"><span>HSP</span></a></li>
                        <li class="nav-item"><a href="AAS.jsp" class="nav-link"><span>AAS</span></a></li>
                        <li class="nav-item"><a href="EHCloud.jsp" class="nav-link"><span>E-H Cloud</span></a></li>
                        <li class="nav-item"><a href="Authority.jsp" class="nav-link"><span>Authority</span></a></li>
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
                            <h3 class="mb-4">Patient Registration Form </h3>
                            <p class="mb-4">

                            <form action="PatientRegisterAction" method="post" class="bg-light p-5 contact-form" onsubmit="return validateForm()">
                                <div class="form-group">
                                    <input type="text" name="pname" class="form-control" placeholder="Patient Name" required="" pattern="[A-Za-z]+" title="Name should not contain integer value">
                                </div>
                                <div class="form-group">
                                    <input type="email" name='pemail' class="form-control" placeholder="Email" required="">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="ppswd" class="form-control" placeholder="password" pattern="(?=.*\d)(?=.*[a-z]).{8,}" title="Must contain at least one number and lowercase letter, and at least 8 or more characters" required="">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="mobile" class="form-control" placeholder="Enter Your Mobile number" pattern="[6789][0-9]{9}" title="Mobile Number Must 10 Digits" required>
                                </div>               
                                <div class="form-group">
                                    <input type="date" class="form-control" name="dob" placeholder="DOB"  required="">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="gender" placeholder="Gender" pattern="[A-Za-z]+" required="">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="state" placeholder="State" pattern="[A-Za-z]+" required="">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name='country' placeholder="Country" pattern="[A-Za-z]+" required="">
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="register" class="btn btn-secondary py-3 px-5">
                                </div>
                            </form>
                                <%
                                String msg = request.getParameter("msg");
                                if (msg != null && msg.equalsIgnoreCase("success")) {
                                    out.println("<font color='green'>Registration Successfull </font>");
                                } else if (msg != null && msg.equalsIgnoreCase("failed")) {
                                    out.println("<font color='RED'>Registration Faild</font>");
                                }else if (msg != null && msg.equalsIgnoreCase("exist")) {
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