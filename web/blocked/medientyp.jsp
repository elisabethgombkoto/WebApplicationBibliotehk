<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <title> Medientypenseiten</title>
    <link rel="stylesheet" href="../css/design.css" media="screen">
    <link rel="stylesheet" href="../css/print.css" media="print">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <script type="text/javascript" src="../js/cookie.js"></script>
</head>
<body class="body" onload="createCookie('lastVisitedPage', 'medientyp.html')">
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

    <h1>Medientypen</h1>

<table border="2" width="60%" align=right>
    <tr>
        <td width="25%">    </td>
        <td width="30&">Raum</td>
        <td width="25&">Regal</td>
        <td width="20%">Ausleihfrist</td>
    </tr>
    <tr>
        <td width="25%"><a href="book.jsp">Bücher</a></td>
        <td>Széchényi Raum</td>
        <td>AAA000-ZZZ999</td>
        <td>20Tage</td>
    </tr>
    <tr>
        <td width="25%"><a href="game.jsp">Games</a></td>
        <td>Kossuth Raum</td>
        <td>NM000-NM999</td>
        <td>14Tage</td>
    </tr>
    <tr>
        <td width="25%"><a href="dvd.jsp">DVD</a></td>
        <td>Széchényi Raum</td>
        <td>AADVD1951-ZZDVD2017</td>
        <td>14Tage</td>
    </tr>
    <tr>
        <td width="25%"><a href="journal.jsp">Jornals</a></td>
        <td>Kossuth Raum</td>
        <td>AA1960/01-AA2020/12</td>
        <td>20Tage</td>
    </tr>

</table>
<p>Auf den Medientypenseiten soll zunächst der Medientyp und der Raum mit Regal, in dem er zu finden ist, angegeben werden. <br>
    Anschließend erscheint eine Angabe über die Ausleihfrist für die Exemplare des betreffenden Medientyps. <br>
    Danach folgt eine Tabelle, in der die vorhandenen Exemplare, die in der Bibliothek zu diesem Medientyp vorhanden sind, aufgelistet werden;<br>
    in den Zeilen stehen jeweils die Exemplare, während in den Spalten die vom Medientyp abhängigen Eigenschaften der Exemplare <br>
    (z.B. Index, Autor, Titel, verliehen bis) angezeigt werden.<br>
    Außerdem soll ein Link von jedem Exemplar auf eine (Unter-)Seite verweisen,<br>
    auf der das Medium vorgestellt wird mit einer detaillierten Inhaltsangabe.<br>
    Geben Sie für diese erste Phase, im Sinne eines Layout-Prototypen, exemplarisch einige Einträge für
 die statischen Ausgaben vor. <br>
    Es sind wenigstens zwei Medientypenseiten (z.B. für Bücher und DVDs) auszuarbeiten. </p>
</div>
</body>
</html>