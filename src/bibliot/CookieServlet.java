package bibliot;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Elisabeth on 04.04.2017.
 *
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */

@WebServlet(urlPatterns = {"/index.html"})
public class CookieServlet extends HttpServlet{

    protected void cookieRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Cookie[] cookies=request.getCookies();
        if(cookies!=null){
            for(Cookie cookie:cookies){
                if(cookie.getName().equals("lastVisitedPage")){
                    response.sendRedirect(cookie.getValue());
                    return;
                }
            }
            response.sendRedirect("home.jsp");
        }
        else {
            response.sendRedirect("home.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        cookieRequest(request,response);
    }

    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        cookieRequest(request, response);
    }
}
