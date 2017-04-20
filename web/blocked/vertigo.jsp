<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <title>Vertigo – Aus dem Reich der Toten</title>
    <link rel="stylesheet" href="../css/design.css" media="screen">
    <link rel="stylesheet" href="../css/print.css" media="print">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <script type="text/javascript" src="../../js/cookie.js"></script>

</head>
<body class="body" onload="createCookie('lastVisitedPage','vertigo.html')">
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

    <h1>Vertigo – Aus dem Reich der Toten</h1>
    <ul>
        <li>
            Regie: Alfred Hitchcock
        </li>
        <li>
            Darsteller: James Stewart, Kim Novak, Barbara Bel Geddes
        </li>
    </ul>
    <br>
    <br>
    Ein Schwindel erregender Trip in die Abgründe von Liebe, Tod und Verbrechen.<br>
    James Stewart beschattet als Privatdetektiv die Frau eines Freundes, deren vermeintlichen Selbstmord er <br>
    auf Grund seiner Höhenangst nicht verhindern kann – bald schon begegnet er jedoch einer Frau, die ihn an die Tote erinnert, <br>
    und wird dabei zum Opfer eines Komplotts. Erst bei der Wiederaufführung gut 20 Jahre später wurde die wahre Größe des somnambulen Thrillers erkannt.
</div>
</body>
</html>