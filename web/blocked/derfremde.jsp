<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <title>Der Fremde</title>
    <link rel="stylesheet" href="../css/design.css" media="screen">
    <link rel="stylesheet" href="../css/print.css" media="print">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <script type="text/javascript" src="../js/cookie.js"></script>
</head>
<body class="body" onload="createCookie('lastVisitedPage', 'derfremde.html')">
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

    <h1>Der Fremde</h1>
    <ul>
        <li>
            Albert Camus: Der Fremde
        </li>
        <li>
            Übersetzt von Uli Aumüller Sonderausgabe. Rowohlt, Reinbek 2010
        </li>
        <li>
            ISBN 978-3-499-25308-9
        </li>
    </ul>
    <br>
    <h2>Inhalt</h2>
    <br>
    Der Roman erzählt die Geschichte eines introvertierten Mannes namens Meursault.
    Er hat einen Mord begangen und wartet in seiner Gefängniszelle auf die Hinrichtung.
    Die Handlung spielt im Algerien der 1930er Jahre. Der Name Meursault ist möglicherweise
    abgeleitet von „Meurs, sot!“, zu Deutsch etwa „Stirb, (du) Trottel!“
<br>
    Der Roman ist in zwei Teile gegliedert. Der erste Teil beginnt mit den Worten:
    „Heute ist Mutter gestorben. Oder vielleicht gestern, ich weiß es nicht.
    “ Bei der Beerdigung seiner Mutter zeigt sich Meursault ohne jegliche Emotionen.
    Die fehlende Anteilnahme beruhte offensichtlich auf Gegenseitigkeit.
    Der Roman setzt mit einer Dokumentation der folgenden Tage von Meursaults Leben aus der Ich-Perspektive fort.
<br>
    Meursault zeigt sich als Mensch, der antriebslos in den Tag hineinlebt,
    der zwar Details seiner Umgebung wahrnimmt, jedoch Gewalt und Ungerechtigkeit emotionslos akzeptiert.
    Kurz nach der Beerdigung seiner Mutter beginnt er eine Liebesaffäre, was später als Beweis für seine emotionale
    Kälte angeführt wird. Der Protagonist gibt sich zufrieden, wenn sein Alltag routinemäßig wie eh und je abläuft.
<br>
    Sein Nachbar Raymond Sintès, der der Zuhälterei verdächtigt wird, freundet sich mit ihm an. Meursault hilft Raymond,
    eine Mätresse, eine Araberin, die er als ehemalige Freundin ausgibt, anzulocken. Raymond bedrängt und demütigt die Frau.
    Später begegnen Meursault und Raymond dem Bruder der Frau und dessen Freunden am Strand, es kommt zu einer Schlägerei.
    Kurz danach trifft Meursault wiederum einen Araber aus dieser Gruppe, der bei seinem Anblick ein Messer zieht.
    Vom Glanz der Sonne auf der Messerklinge geblendet, umklammert Meursault einen von Raymond ausgeliehenen Revolver in der Tasche,
    zieht die Waffe und tötet den Araber mit einem Schuss. Ohne besonderen Grund gibt er unmittelbar darauf vier weitere Schüsse auf den Leichnam ab,
    was vor Gericht zum Ausschluss von Notwehr und unbeabsichtigtem Totschlag führt und letztlich die Verurteilung als Mörder bewirkt.
    Meursaults mögliche teilweise Unzurechnungsfähigkeit, nach Stunden in praller Sonne, steht im Raum.
<br>
    Der zweite Teil des Buches behandelt den Prozess. Hier wird der Protagonist erstmals damit konfrontiert,
    wie er durch sein gleichgültiges Verhalten auf Gottesfürchtige wirkt. Den Vorwurf, er sei gottlos,
    nimmt er kommentarlos hin und verteidigt sich nicht. Sein indolentes [gleichgültiges]
    Verhalten deutet er selbst als konsequenten Lebensansatz. Meursault wird zum Tod durch die Guillotine verurteilt.
    Als der Gefängnisgeistliche in der Todeszelle für ihn beten will, bricht er in Wut aus,
    doch zum Schluss wird er empfänglich „für die zärtliche Gleichgültigkeit der Welt“.

</div>
</body>
</html>