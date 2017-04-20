package bibliot;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import static java.util.jar.Pack200.Packer.PASS;

/**
 * Created by Elisabeth on 11.04.2017.
 */
public class UserID implements Serializable {
  private String _userID;
  private String _passwort;
  private String _firstname;
  private String _lastname;
  private String _email;
  private String _usercategory;


  public String get_userID() {
    return _userID;
  }

  public void set_userID(String _userID) {
    this._userID = _userID;
  }

  public String get_passwort() {
    return _passwort;
  }

  public void set_passwort(String _passwort) {
    this._passwort = _passwort;
  }

  public String get_firstname() {
    return _firstname;
  }

  public void set_firstname(String _firstname) {
    this._firstname = _firstname;
  }

  public String get_lastname() {
    return _lastname;
  }

  public void set_lastname(String _lastname) {
    this._lastname = _lastname;
  }

  public String get_email() {
    return _email;
  }

  public void set_email(String _email) {
    this._email = _email;
  }

  public String get_usercategory() {
    return _usercategory;
  }

  public void set_usercategory(String _usercategory) {
    this._usercategory = _usercategory;
  }


  public void saveUser()  {
    Connection conn;
    Statement stmt;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://mysql.fhv.at:3306/ego8769", "ego8769", "benblele");
      stmt=conn.createStatement();
      stmt.execute
          ("INSERT INTO login(userID,passwort,firstname,lastname,email,usercategory ) VALUES ( '"
          + _userID + "' , '" + _passwort + "','" + _firstname + "', '" + _lastname + "', '" + _email + "', '" + _usercategory + "')");
      stmt.close();
      conn.close();
    } catch (SQLException | ClassNotFoundException e) {
      e.printStackTrace();
    }
  }

  public boolean existUserID() {
    Boolean userIdExists = false;
    Connection conn;
    Statement stmt;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://mysql.fhv.at:3306/ego8769", "ego8769", "benblele");
      stmt=conn.createStatement();
      ResultSet result = stmt.executeQuery("SELECT userID FROM login");

      while (result.next() && !userIdExists) {
        String userID = result.getString("userID");
        if (userID.equals(_userID)) {
          userIdExists = true;
        }
      }
      stmt.close();
      conn.close();
    } catch (SQLException | ClassNotFoundException e) {
      e.printStackTrace();
    }
    return userIdExists;
  }

  public boolean tryLogin(String userID, String passwort) {
    Boolean exist = false;
    Connection conn = null;
    Statement stmt = null;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://mysql.fhv.at:3306/ego8769", "ego8769", "benblele");
      stmt=conn.createStatement();
      ResultSet result = stmt.executeQuery("SELECT userID, passwort FROM login");

      while (result.next() && !exist) {
        String ID = result.getString("userID");
        String pass = result.getString("passwort");
        if (userID.equals(ID) && passwort.equals(pass)) {
           exist = true;
        }
      }

    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    } finally {
      try {
        assert conn != null;
        conn.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
    return exist;
  }
}
