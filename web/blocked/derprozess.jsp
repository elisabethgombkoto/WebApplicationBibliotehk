<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <title>Der Prozess</title>
    <link rel="stylesheet" href="../css/design.css" media="screen">
    <link rel="stylesheet" href="../css/print.css" media="print">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <script type="text/javascript" src="../js/cookie.js"></script>
</head>
<body class="body" onload="createCookie('lastVisitedPage', 'derprozess.html')">
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

    <h1>Der Prozess</h1>
    <ul>
        <li>
Franz Kafka: Der Prozess
        </li>
        <li>
            Übersetzt von: Michael Müller
           Reclam Verlages (2006)
        </li>
        <li>
            ISBN: 978-3-15-009676-5
        </li>
    </ul>
    <br>
    <h2>Inhalt</h2>
    <br>

    Der Bankangestellte Josef K. wird eines Morgens von zwei Männern verhaftet und später verhört,
    ohne dass er wüsste, wessen er sich schuldig gemacht haben könnte. Er wird zwar gleich wieder auf freien
    Fuß gesetzt, doch lebt er fortan unter Anklage. Sein Prozess läuft, und Josef K. hat nicht die geringste Ahnung,
    wogegen er sich verteidigen könnte. Auf Drängen seines Onkels nimmt er sich einen Anwalt,
    den alten Advokaten Dr. Huld. Dieser hat viele Kontakte zum Gericht und ist überdies auf solch
    schwierige Fälle spezialisiert. Doch nicht einmal dieser Anwalt bekommt die Anklageschrift zu Gesicht;
    stattdessen bekommt er nur Gerüchte und Andeutungen der Gerichtsdiener und untersten Richter zu hören.
<br>
    Der nervöse Josef K. leidet unter den allseits kursierenden Gerüchten über seinen Prozess. Seine Arbeit
    in der Bank kann er nur noch mit größter Mühe bewältigen. Er ist bald unzufrieden mit seinem Verteidiger,
    da er den Eindruck hat, dieser liege nur krank im Bett und unternehme in seinen Fall so gut wie nichts.
    Der Angeklagte beschließt, sich von dem Advokaten wieder zu trennen und seine Verteidigung selbst zu übernehmen.
<br>
    Von seiner Bank wird Josef K. an einem verregneten Nachmittag in den Dom gebeten, angeblich,
    um einem kunstliebenden Geschäftsfreund des Hauses die Sehenswürdigkeiten zu zeigen.
    Doch statt des Geschäftsfreundes wartet ein Gefängniskaplan auf den unsicher eintretenden Josef K.
    und hält ihm von der Kanzel herab eine laute Strafpredigt. Im anschließenden Gespräch erzählt ihm der Geistliche
    die Parabel vom Gesetz und dessen Torhüter.

    Im letzten Kapitel des Fragment gebliebenen Romans wird Josef K. abends um neun Uhr von zwei Männern zu einem alten Steinbruch abgeführt und hingerichtet.
</div>
</body>
</html>