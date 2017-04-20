package bibliot;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.PrintWriter;
import java.io.Writer;
import java.sql.*;
import java.util.ArrayList;


/**
 * Created by Elisabeth on 27.03.2017.
 *
 *Servlet is a class that extend the capabilities of the servers and respond to the incoming request.
 * It can respond to any type of requests.
 * Servlet is a web component that is deployed on the server to create dynamic web page.
 *
 * A very smart and simple example the Visitorbook website,
 * which runs on web and is connected to mySQL database
 * using Java Database Connection (JDBC) to maintain and update the dynamic content.
 * In this case, servlets play a major role as they are responsible for creating dynamic web pages as and when requested by client.
 */
@WebServlet(name = "Servlet", urlPatterns = {"/servlet"})
public class Servlet extends HttpServlet {
    /**
     * This funktion handles the POST request. It is invoked by the web container.
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            addEntry(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    /**
     * This funktion handles the GET request. It is invoked by the web container.
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // JDBC driver name and database URL
        String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        String DB_URL = "jdbc:mysql://mysql.fhv.at:3306/ego8769";

        //  Database credentials
        String USER = "ego8769";
        String PASS = "benblele";
        Connection conn = null;
        Statement stmt = null;

        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            //STEP 4: Execute a query
            stmt = conn.createStatement();
            String sql = "SELECT firstname, lastname,email,message FROM visitorsbook";
            ResultSet rs = stmt.executeQuery(sql);

            //STEP 6: Extract data from result set
            ArrayList<VisitorsBookEntry> visitorsBookEntries = new ArrayList<>();

            while (rs.next()) {
                //Retrieve by column name
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String email = rs.getString("email");
                String message = rs.getString("message");
                VisitorsBookEntry visitorsBookEntry = new VisitorsBookEntry(firstname, lastname, email, message);
                visitorsBookEntries.add(visitorsBookEntry);
            }
            //set Data in request
            request.setAttribute("visitorsBookEntries", visitorsBookEntries);

            rs.close();
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }//end finally

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/visitorBook.jsp");
        dispatcher.forward(request, response);
    }//end

    /**
     *  handles the POST request. It is invoked by the web container.
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     * @throws ClassNotFoundException
     */
    private void addEntry(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {

        // JDBC driver name and database URL
        String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        String DB_URL = "jdbc:mysql://mysql.fhv.at:3306/ego8769";

        //  Database credentials
        String USER = "ego8769";
        String PASS = "benblele";
        Connection conn = null;
        Statement stmt = null;

        //get the variables entered in the form
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        try {
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //STEP 3: Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            //STEP 4: Execute a query
            stmt=conn.createStatement();
                stmt.execute("INSERT INTO visitorsbook(firstname,lastname, email, message) VALUES ( '"
                        + firstname + "' , '" + lastname + "','" + email + "', '" + message + "')");
            stmt.close();
            conn.close();

        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }//end finally
        response.sendRedirect("/visitorBook.jsp");
    }//end
}


