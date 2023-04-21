package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <title> G-Cloud-Based Framework </title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    \n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/open-iconic-bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/aos.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/ionicons.min.css\">\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/flaticon.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/icomoon.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("  </head>\n");
      out.write("  <body data-spy=\"scroll\" data-target=\".site-navbar-target\" data-offset=\"300\">\n");
      out.write("  \t<div class=\"py-1 bg-black top\">\n");
      out.write("    \t<div class=\"container\">\n");
      out.write("    \t\tWelcome G-Cloud Based Framework for EHR\n");
      out.write("\t\t  </div>\n");
      out.write("    </div>\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target\" id=\"ftco-navbar\">\n");
      out.write("\t    <div class=\"container\">\n");
      out.write("\t      <a class=\"navbar-brand\" href=\"index.jsp\"> G-Cloud-Based Framework </a>\n");
      out.write("\t      <button class=\"navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t        <span class=\"oi oi-menu\"></span> Menu\n");
      out.write("\t      </button>\n");
      out.write("\n");
      out.write("\t      <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\n");
      out.write("\t        <ul class=\"navbar-nav nav ml-auto\">\n");
      out.write("                    <li class=\"nav-item\"><a href=\"index.jsp\" class=\"nav-link\"><span>Home</span></a></li>\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"Patient.jsp\" class=\"nav-link\"><span>Patient</span></a></li>\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"HSP.jsp\" class=\"nav-link\"><span>HSP</span></a></li>\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"AAS.jsp\" class=\"nav-link\"><span>AAS</span></a></li>\n");
      out.write("\t          <!--<li class=\"nav-item\"><a href=\"EHCloud.jsp\" class=\"nav-link\"><span>E-H Cloud</span></a></li>-->\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"Authority.jsp\" class=\"nav-link\"><span>Authority</span></a></li>\n");
      out.write("\t          <!--<li class=\"nav-item cta mr-md-2\"><a href=\"appointment.html\" class=\"nav-link\">Appointment</a></li>-->\n");
      out.write("\t        </ul>\n");
      out.write("\t      </div>\n");
      out.write("\t    </div>\n");
      out.write("\t  </nav>\n");
      out.write("\t  \n");
      out.write("\t  <section class=\"hero-wrap js-fullheight\" style=\"background-image: url('images/bg_3.jpg');\" data-section=\"home\" data-stellar-background-ratio=\"0.5\">\n");
      out.write("      <div class=\"overlay\"></div>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row no-gutters slider-text js-fullheight align-items-center justify-content-start\" data-scrollax-parent=\"true\">\n");
      out.write("          <div class=\"col-md-6 pt-5 ftco-animate\">\n");
      out.write("          \t<div class=\"mt-5\">\n");
      out.write("          \t\t<span class=\"subheading\"></span>\n");
      out.write("\t            <h2 class=\"mb-4\"  style=\"color: blue\">Government Healthcare Services </h2>\n");
      out.write("                    <div align=\"justify\" style=\"color: black\"<p class=\"mb-4\">Within the literature, we have witnessed in the healthcare sector, the growing demand for and adoption of software development in the cloud environment to cope with and fulfill current and future demands in healthcare services. In this paper, we propose a flexible, secure, cost effective, and privacypreserved cloud-based framework for the healthcare environment. We propose a secure and efficient framework for the government EHR system, in which fine-grained access control can be afforded based on multi-authority ciphertext attribute-based encryption (CP-ABE), together with a hierarchical structure, to enforce access control policies. The proposed framework will allow decision makers in the Kingdom of Saudi Arabia to develop the healthcare sector and to benefit from the existing e-government cloud computing platform ?Yasser,? which is responsible for delivering shared services through a highly efficient, reliable, and safe environment. This framework aims to provide health services and facilities from the government to citizens (G2C).  </p>\n");
      out.write("                    </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("    <footer class=\"ftco-footer ftco-section img\" style=\"background-image: url(images/footer-bg.jpg);\">\n");
      out.write("    \t<div class=\"overlay\"></div>\n");
      out.write("      <div class=\"container-fluid px-md-5\">\n");
      out.write("        <div class=\"row mb-5\">\n");
      out.write("         \n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-12 text-center\">\n");
      out.write("\t\n");
      out.write("            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"icon-heart color-danger\" aria-hidden=\"true\"></i> by <a href=\"https://google.com\" target=\"_blank\">Alex Hales</a>\n");
      out.write("  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("    \n");
      out.write("  \n");
      out.write("\n");
      out.write("  <!-- loader -->\n");
      out.write("  <div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#F96D00\"/></svg></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <script src=\"js/jquery.min.js\"></script>\n");
      out.write("  <script src=\"js/jquery-migrate-3.0.1.min.js\"></script>\n");
      out.write("  <script src=\"js/popper.min.js\"></script>\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("  <script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("  <script src=\"js/jquery.waypoints.min.js\"></script>\n");
      out.write("  <script src=\"js/jquery.stellar.min.js\"></script>\n");
      out.write("  <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("  <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("  <script src=\"js/aos.js\"></script>\n");
      out.write("  <script src=\"js/jquery.animateNumber.min.js\"></script>\n");
      out.write("  <script src=\"js/scrollax.min.js\"></script>\n");
      out.write("  <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false\"></script>\n");
      out.write("  <script src=\"js/google-map.js\"></script>\n");
      out.write("  \n");
      out.write("  <script src=\"js/main.js\"></script>\n");
      out.write("    \n");
      out.write("  </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
