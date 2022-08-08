package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <title>Login/Sign Up</title>\n");
      out.write("  <link href=\"css/login.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <div class=\"container\" id=\"container\">\n");
      out.write("    <!-- sign in page -->\n");
      out.write("    <div class=\"form-container sign-in-container\">\n");
      out.write("      <form action=\"login\" method=\"post\" class=\"form\" id=\"login\">\n");
      out.write("        <h1 class=\"form__title\">Login</h1>\n");
      out.write("        <div class=\"form__input-group\">\n");
      out.write("          <label for=\"account\">Username: </label>\n");
      out.write("          <input type=\"text\" class=\"form__input\" name=\"account\" id=\"username\" maxlength=\"20\" required> \n");
      out.write("        </div>\n");
      out.write("        <div class=\"form__input-group\">\n");
      out.write("          <label for=\"password\">Password: </label>\n");
      out.write("          <input type=\"password\" class=\"form__input\" name=\"password\" id=\"password\" maxlength=\"20\" required> \n");
      out.write("        </div>\n");
      out.write("        <div class=\"form__input-group\">\n");
      out.write("          <button type=\"submit\" class=\"form__button\">Submit</button>\n");
      out.write("        </div>\n");
      out.write("     </form>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("   <!--  create account page -->\n");
      out.write("   <div class=\"form-container sign-up-container\">\n");
      out.write("     <form action=\"signup\" method=\"post\"  class=\"form\" id=\"register\">\n");
      out.write("       <h1 class=\"form__title\">Register</h1>\n");
      out.write("       <div class=\"form__input-group\">\n");
      out.write("         <label for=\"account\"> Username: </label>\n");
      out.write("         <input type=\"text\" class=\"form__input\" name=\"account\" id=\"username\" maxlength=\"20\" required>\n");
      out.write("       </div>\n");
      out.write("        <div class=\"form__input-group\">\n");
      out.write("          <label for=\"password\">Password: </label>\n");
      out.write("          <input type=\"password\" class=\"form__input\" name=\"password\" id=\"pass\" maxlength=\"20\" required> \n");
      out.write("        </div>\n");
      out.write("       <button class=\"form__button\" type=\"submit\">Submit</button>\n");
      out.write("     </form>\n");
      out.write("   </div> \n");
      out.write("    \n");
      out.write("   <div class=\"overlay-container\">\n");
      out.write("\t\t<div class=\"overlay\">\n");
      out.write("\t\t\t<div class=\"overlay-panel overlay-left\">\n");
      out.write("\t\t\t\t<h1>Welcome Back!</h1>\n");
      out.write("\t\t\t\t<p>Please login with your personal info</p>\n");
      out.write("\t\t\t\t<button class=\"ghost\" id=\"signIn\">Sign In</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"overlay-panel overlay-right\">\n");
      out.write("\t\t\t\t<h1>Hello, Friend!</h1>\n");
      out.write("\t\t\t\t<p>Enter your personal details and start journey with us</p>\n");
      out.write("\t\t\t\t<button class=\"ghost\" id=\"signUp\">Sign Up</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write(" </div>\n");
      out.write("  \n");
      out.write("  <script src=\"js/mainlogin.js\"></script>\n");
      out.write("  \n");
      out.write("</body>\n");
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
