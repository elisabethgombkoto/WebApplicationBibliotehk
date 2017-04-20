<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Elisabeth
  Date: 27.03.2017
  Time: 13:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="bibliot.VisitorsBookEntry" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Gäste Buch</title>
    <link rel="stylesheet" href="../css/design.css" media="screen">
    <link rel="stylesheet" href="../css/print.css" media="print">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <script type="text/javascript" src="../js/cookie.js"></script>
    <% Cookie cookie= new Cookie("lastVisitedPage", "visitorBook.jsp");
    cookie.setMaxAge(60*60*24*365*1000);
    cookie.setPath("/");
    response.addCookie(cookie);
    %>
</head>
<body class="body">
<div class="leftListOnTheSide" onload="">
    <div class="no-print">
        <img src="../logo.JPG" alt="logo" id="logo" onclick="openWindow()">
    </div>
    <ul>
        <li><i class = "fa fa-home" aria-hidden="true"></i>
            <a href = "controller?dispatchto=form">Home</a>
        </li>
        <li>
            <i class="fa fa-envelope-o" aria-hidden="true"></i>
            <a href="mailto:ego8769@students.fhv.at">Email</a>
        </li>
        <li>
            <a href="visitorBook.jsp">Gästebuch</a>
        </li>
        <li>
            <a href="../picture.html">Bild PopUp aufrufen</a>
        </li>
        <li>
            <a href="dynamicTable.jsp">DynamicTable</a>
        </li>
        <li>
            <a href="historie.jsp">Historie</a>
        </li>
        <li>
            <i class="fa fa-th-list" aria-hidden="true"></i>
            <a href="medientyp.jsp">Medientypen</a>
        </li>
        <ul>
            <li>
                <i class="fa fa-book" aria-hidden="true"></i>
                <a href="book.jsp">Bücher</a>
            </li>
            <li>
                <i class="fa fa-gamepad" aria-hidden="true"></i>
                <a href="game.jsp">Spiele</a>
            </li>
            <li>
                <i class="fa fa-youtube-play" aria-hidden="true"></i>
                <a href="dvd.jsp">DVD</a>
            </li>
            <li>
                <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                <a href="journal.jsp">Zeitschriften</a>
            </li>
        </ul>

    </ul>
</div>
<div class="inhalt">
    <h1>Gästebuch</h1>

    <form action="servlet" method="post">
      <pre>
          <input type="text" name="firstname" placeholder="Nachname"/>
          <input type="text" name="lastname" placeholder="Vorname"/>
          <input type="text" name="email" placeholder="E-Mail Adresse">
          <textarea name="message" id="message" placeholder="Mein Eintrag ins Gästebuch." cols="30" rows="10"></textarea>
          <input type="submit" value="Submit">
      </pre>
    </form>
</div>
<div class="visitorsBookEntry">
    <h1>Gästebookeinträge</h1>
    <%
        ArrayList<VisitorsBookEntry> visitorsBookEntries = (ArrayList<VisitorsBookEntry>) request.getAttribute("visitorsBookEntries");
        if (visitorsBookEntries == null) {
            request.getRequestDispatcher("/servlet").forward(request, response);
        } else {
            for (VisitorsBookEntry visitorsBookEntry : visitorsBookEntries) {
                if (visitorsBookEntry != null) {
                    out.println("Vorname: " + visitorsBookEntry.get_firstname() + "<br/>");
                    out.println("Nachname: " + visitorsBookEntry.get_lastname() + "<br/>");
                    out.println("Email: " + visitorsBookEntry.get_email() + "<br/>");
                    out.println("Message: " + visitorsBookEntry.get_message() + "<br/>");
                    out.println("<br/>");
                }
            }
        }
    %>
</div>
</body>
</html>
