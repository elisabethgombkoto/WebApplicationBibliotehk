package bibliot;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Elisabeth on 04.05.2017.
 *
 */
@WebServlet(name = "SomeServlet", urlPatterns = {"/someservlet"})
public class SomeServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String text = request.getParameter("input");
    int length = text.length();


    response.setContentType("text/xml");  // Set content type of the response so that jQuery knows what it can expect.
    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
    response.getWriter().write("<length>"+length+"</length>");       // Write response body.
  }
}
