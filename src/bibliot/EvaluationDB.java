package bibliot;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Elisabeth on 25.04.2017.
 *The Evaluation class represents the business logic (Model)
 */
public class EvaluationDB {

  public void add(String name, String medienTitle, String evaluation, List<String> selectedAges, String comment) {
    Connection conn;
    Statement stmt;
    String age= "";
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://mysql.fhv.at:3306/ego8769", "ego8769", "benblele");
      stmt = conn.createStatement();

      for (String a : selectedAges) {
        if(age.isEmpty()){
          age = a;
          System.out.println(age);
        }else {
          age = age + "," + a;
          System.out.println(age);
        }
      }
      stmt.execute
          ("INSERT INTO evaluation(name, medien, evaluation, age, comment ) VALUES ( '"
              + name+ "' , '" + medienTitle + "','" + evaluation + "', '" + age + "', '" + comment + "')");
      stmt.close();
      conn.close();
    } catch (SQLException | ClassNotFoundException e) {
      e.printStackTrace();
    }
  }
  /**
   *
   * @return
   */
  public ArrayList<String> getBooks() {

    Connection conn = null;
    Statement stmt = null;
    ArrayList<String> list = new ArrayList<>();
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://mysql.fhv.at:3306/ego8769", "ego8769", "benblele");
      stmt=conn.createStatement();
      ResultSet result = stmt.executeQuery("SELECT title, author, year FROM book");

      while (result.next()) {
        String title = result.getString("title");
        String author = result.getString("author");
        String year = result.getString("year");
        list.add(title);

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
    return list;
  }

  /**
   *
   * @return
   */
  public ArrayList<String> getDVDs() {

    ArrayList<String> titles = new ArrayList<>();
    Connection conn;
    Statement stmt;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://mysql.fhv.at:3306/ego8769", "ego8769", "benblele");
      stmt=conn.createStatement();
      ResultSet result = stmt.executeQuery("SELECT title FROM dvd");

      while (result.next() ) {
        String t = result.getString("title");
        titles.add(t);
      }
      stmt.close();
      conn.close();
    } catch (SQLException | ClassNotFoundException e) {
      e.printStackTrace();
    }
    return titles;
  }

  /**
   *
   * @return
   */
  public ArrayList<Evaluation> getAllEvaluations( String title){

    ArrayList<Evaluation> evaluations = new ArrayList<>();
    Connection conn;
    Statement stmt;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://mysql.fhv.at:3306/ego8769", "ego8769", "benblele");
      stmt=conn.createStatement();
      //TODO select unschreiben
      ResultSet result = stmt.executeQuery("SELECT name, medien, evaluation, age, comment FROM evaluation" );

      while (result.next() ) {

        String n = result.getString("name");
        String m = result.getString("medien");
        String e = result.getString("evaluation");
        String a = result.getString("age");
        String c = result.getString("comment");

        Evaluation evaluation = new Evaluation();

        evaluation.setName(n);
        evaluation.setMedien(m);
        evaluation.setEvaluation(e);
        evaluation.setAge(a);
        evaluation.setComment(c);

        evaluations.add(evaluation);
      }
      stmt.close();
      conn.close();
    } catch (SQLException | ClassNotFoundException e) {
      e.printStackTrace();
    }
    return evaluations;
  }
}