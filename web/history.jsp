<%--
  Created by IntelliJ IDEA.
  User: Elisabeth
  Date: 19.04.2017
  Time: 08:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>History</title>
    <link rel="stylesheet" href="css/design.css" media="screen">
    <link rel="stylesheet" href="css/print.css" media="print">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script type="text/javascript" src="js/form.js"></script>
    <script type="text/javascript" src="js/cookie.js"></script>

</head>
<body class="body">
<div class="leftListOnTheSide" onload="">
    <div class="no-print">
        <img src="logo.JPG" alt="logo" id="logo" onclick="openWindow()">
    </div>
    <ul>
        <li><i class = "fa fa-home" aria-hidden="true"></i>
            <a href = "controller?dispatchto=form">Home</a>
        </li>
        <li>
            <i class="fa fa-pencil" aria-hidden="true"></i>
            <a href="formular.jsp">Formular</a>
        </li>
        <li>
            <i class="fa fa-envelope-o" aria-hidden="true"></i>
            <a href="mailto:ego8769@students.fhv.at">Email</a>
        </li>
        <li>
            <i class="fa fa-th-list" aria-hidden="true"></i>
            <a href="blocked/medientyp.jsp">Medientypen</a>
        </li>
        <ul>
            <li>
                <i class="fa fa-book" aria-hidden="true"></i>
                <a href="blocked/book.jsp">Bücher</a>
            </li>
            <li>
                <i class="fa fa-gamepad" aria-hidden="true"></i>
                <a href="blocked/game.jsp">Spiele</a>
            </li>
            <li>
                <i class="fa fa-youtube-play" aria-hidden="true"></i>
                <a href="blocked/dvd.jsp">DVD</a>
            </li>
            <li>
                <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                <a href="blocked/journal.jsp">Zeitschriften</a>
            </li>
        </ul>
        <li>
            <a href="blocked/visitorBook.jsp">Gästebuch</a>
        </li>
        <li>
            <a href="picture.html">Bild PopUp aufrufen</a>
        </li>
        <li>
            <a href="blocked/dynamicTable.jsp">DynamicTable</a>
        </li>
        <li>
            <a href="blocked/historie.jsp">Historie</a>
        </li>

    </ul>
</div>
<div class="inhalt">
<table>
    <tr>
        <th>Visited Page</th>
        <th>Time visited</th>
    </tr>

    <c:forEach var="history" items="${sessionScope.history}">
        <tr>
            <td>
                <a href="${history.url}"><c:out value="${history.url}" /></a>
            </td>
            <td><c:out value="${history.datetime}" /></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
