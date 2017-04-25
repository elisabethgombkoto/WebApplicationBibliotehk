<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">

    <title> Bibliothek Übersicht</title>
    <link rel="stylesheet" href="css/design.css" media="screen">
    <link rel="stylesheet" href="css/print.css" media="print">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="js/picturespopup.js"></script>
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
            <a href="blocked/evaluation.xhtml">Medien Bewertung</a>
        </li>
        <li>
            <i class="fa fa-pencil" aria-hidden="true"></i>
            <a href="login.jsp">Login</a>
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
            <a href="controller?dispatchto=form">Medientypen</a>
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
            <a href="blocked/visitorBook.jsp">DynamicTable</a>
        </li>
        <li>
            <a href="blocked/historie.jsp">Historie</a>
        </li>

    </ul>
</div>
<div class="inhalt">

    <h1>Home</h1>
    <h2> Allgemeine Informationen über die Bibliothek </h2>

    <p>Öffnungszeiten</p><br>
    Mo-geschlossen<br>
    Di-Sa 7.30-13.30Uhr 14.30-19.30Uhr<br>
    So 9.00-16.00Uhr<br>
    <br>
    <p>Während den Schulferien bleibt die Bibliothek jeweils am Morgen geschlossen</p>
    <br>
    <p>Adresse<br></p>
    Dorfbibliothek Würenlingen<br>
    5303 Würenlingen, Dorfstrasse 6.<br>
    <br>
    Dachboden im Postgebäude <br>
    <br>
    <br>
    <p>Ausleihgebühr<br></p>
    <br>
    Jahresabonnement für Erwachsene: <br>
    Berechtigt zum Bezug aller Medien (inkl. E-Medien) der Dorfbibliothek Fr. 30.- <br>
    <br>
    Jahresabonnement für Kinder und Jugendliche unter 20 Jahren: <br>
    Berechtigt zum Bezug aller Medien <p>(inkl. E-Medien)</p> der Dorfbibliothek Fr. 30.- <br>
    <br>
    Jahresabonnement für Kinder und Jugendliche unter 20 Jahren: <br>
    Berechtigt zum Bezug aller Medien <p>(exkl. E-Medien)</p> der Dorfbibliothek gratis <br>
    <br>
    Das Jahresabonnement ist gültig 1 Jahr ab Einzahlungsdatum. <br>
    <br>
    <br>

    <p>Benutzerausweis<br></p>
    <br>
    Der Benutzerausweis ist persönlich, nicht übertragbar und jedesmal mitzubringen. <br>
    Bei Ausweisverlust ist die Bibliothek zu benachrichtigen, um Missbrauch zu verhindern. <br>
    Ersatzausweis Fr. 5.-. <br>
    <br>

    <p>Mahngebühren<br></p>
    <br>
    1. Mahnung Fr. 4.— <br>
    2. Mahnung Fr. 6.— <br>
    3. Mahnung Fr. 15.— <br>
    <br>
    weitere Mahn- und Rückforderungshandlungen <br>
    nach Aufwand, jedoch mindestens Fr. 25.— <br>
    <br>
    Während den Schulferien wird nicht gemahnt. <br>
    <br>
    <br>
</div>
</body>
</html>