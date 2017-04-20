<%--
  Created by IntelliJ IDEA.
  User: Elisabeth
  Date: 11.04.2017
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formular</title>
    <link rel="stylesheet" href="css/design.css" media="screen">
    <link rel="stylesheet" href="css/print.css" media="print">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script type="text/javascript" src="js/form.js"></script>
    <script type="text/javascript" src="js/cookie.js"></script>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
</head>
<body class="body" >
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
            <i class="fa fa-pencil" aria-hidden="true"></i>
            <a href="login.jsp">Login</a>
        </li>
    </ul>
</div>
<div class="inhalt">


    <h1>Formular</h1>

    <form name="form" onsubmit="return validateForm()" action="controller" >
        <p>
            <label for="firstname">Vorname:</label>
            <input TYPE="TEXT" id="firstname" name="firstname">
        </p>
        <p>
            <label for="lastname">Nachname:</label>
            <input TYPE="TEXT" id="lastname" name="lastname">
        </p>
        <p>
            <label for="email">E-Mail-Adresse:</label>
            <INPUT TYPE="TEXT" id="email" name="email">
        </p>
        <p>
            <label for="userID">UserID:</label>
            <input type="TEXT" id="userID" name="userID">
        </p>
        <p>
            <label for="password" >Passwort:</label>
            <input type="password" id="password" name="password">
        </p>
        <p>
            <label for="password2">Password bitte wiederholen:</label>
            <input type="password" id="password2" name="password2">
        </p>
        <p>
            <label for="over20">Jahresabonnement für Erwachsene (exkl. E-Medien)</label>
            <input type="radio" name="over20" id="over20" value="over20"  >

            <label for="over20plusDVD">Jahresabonnement für Erwachsene(inkl. E-Medien)</label>
            <input type="radio" name="over20plusDVD" id="over20plusDVD" value="over20plusDVD"  >
            <br>

            <label for="under20">Jahresabonnement für Kinder und Jugendliche unter 20 Jahren (exkl. E-Medien)</label>
            <input type="radio" name = "under20" id="under20" value="under20"  >

            <label for="under20plusDVD">Jahresabonnement für Kinder und Jugendliche unter 20 Jahren(inkl. E-Medien)</label>
            <input type="radio" name = "under20plusDVD" id="under20plusDVD" value="under20plusDVD"  >
        </p>

        <p>
            <input type="submit" value="Absenden">
            <input type="reset" value="Formular löschen">
            <input type="hidden" name="dispatchTo" value="registration">

        </p>
    </form>
</div>
</body>
</html>
