package bibliot;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;

/**
 * Created by Elisabeth on 12.04.2017.
 *
 */

@WebServlet(name = "Controller",urlPatterns = {"/controller"})
public class Controller extends HttpServlet {

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException {

    ServletContext context = getServletContext();
    HttpSession session = request.getSession();
    String dispatchTo = "";

    if (request.getParameter("dispatchTo") != null) {
      dispatchTo = request.getParameter("dispatchTo");
    } else {
      response.sendRedirect("home.jsp");
      return;
    }

    if (dispatchTo.equals("form")) {
      String page = "/formular.jsp";
      RequestDispatcher dispatcher = context.getRequestDispatcher(page);
      dispatcher.forward(request, response);
    } else if (dispatchTo.equals("registration")) {
      try {
        registration(session, request, response, context);
      } catch (ClassNotFoundException e) {
        e.printStackTrace();
      }

    } else if (dispatchTo.equals("login")) {
      login(session, request, response, context);
    }
  }


  private void registration(HttpSession session, HttpServletRequest request,
                            HttpServletResponse response, ServletContext context) throws ClassNotFoundException, ServletException, IOException {
    UserID userID = (UserID) session.getAttribute("registration");
    if (userID == null) {
      userID = new UserID();
      session.setAttribute("registration", userID);
    }
    String user = request.getParameter("userID");
    String passwort = request. getParameter("password");
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String email = request.getParameter("email");
    String userc = "";
    if(request.getAttribute("under20")!=null){
      userc=request.getParameter("under20");
    }
    if(request.getAttribute("under20plusDVD")!=null){
      userc=request.getParameter("under20plusDVD");
    }
    if(request.getAttribute("over20")!=null){
      userc=request.getParameter("over20");
    }
    if(request.getAttribute("over20plusDD")!=null){
      userc=request.getParameter("over20plusDVD");
    }

    userID.set_passwort(passwort);
    userID.set_userID(user);
    userID.set_firstname(firstname);
    userID.set_lastname(lastname);
    userID.set_email(email);
    userID.set_usercategory(userc);

    if (userID.existUserID()) {
      String page = "/registrationError.jsp";
      RequestDispatcher dispatcher = context.getRequestDispatcher(page);
      dispatcher.forward(request, response);
      return;
    } else {
      userID.saveUser();
      String page = "/registrationSuccessful.jsp";
      RequestDispatcher dispatcher = context.getRequestDispatcher(page);
      dispatcher.forward(request, response);
      return;
    }
  }

  public void login(HttpSession session, HttpServletRequest request,
                     HttpServletResponse response, ServletContext context)
      throws ServletException, IOException {

    String userID = request.getParameter("userID");
    String passwort = request.getParameter("password");


    UserID user = new UserID();
    user.set_passwort(passwort);
    user.set_userID(userID);

    if (user.tryLogin(userID, passwort)) {
      String name = user.getName(userID, passwort);
      System.out.println(name);
      //String name = "Klara";
      session.setAttribute("loggedIn", "loggedIn");
      session.setAttribute("name", name);
      session.setAttribute("history", new ArrayList<History>());
      RequestDispatcher dispatcher = context.getRequestDispatcher("/loginSuccessful.jsp");
      dispatcher.forward(request, response);
      return;
    } else {
      PrintWriter out = response.getWriter();
      RequestDispatcher dispatcher = context.getRequestDispatcher("/loginError.jsp");
      dispatcher.include(request, response);
      out.close();
    }
  }
}