<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <title>Der Pate 1.-(The Godfather)</title>
    <link rel="stylesheet" href="../css/design.css" media="screen">
    <link rel="stylesheet" href="../css/print.css" media="print">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <script type="text/javascript" src="../js/cookie.js"></script>
</head>
<body class="body" onload="createCookie('lastVisitedPage', 'derpate.html')">
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

    <h1>Der Pate 1.-(The Godfather)</h1>
    <ul>
        <li>
            Regie: Francis Ford Coppola
        </li>
        <li>
            Darsteller: Marlon Brando, Al Pacino, Diane Keaton, Talia Shire
        </li>
    </ul>
    <br>
    <br>
    Coppolas grandioses Mafia-Epos nach dem Roman von Mario Puzo.<br>
    Die Familiensaga um den Machtkampf eines italienischen Verbrechersyndikats unter dem Paten Don Vito Corleone (Marlon Brando)<br>
    ist gezeichnet von blutigem Verrat, skrupellosen Intrigen und leidenschaftlichen Verstrickungen.
    </div>

</body>
</html>