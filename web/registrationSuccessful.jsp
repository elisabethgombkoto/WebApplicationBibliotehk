<%--
  Created by IntelliJ IDEA.
  User: Elisabeth
  Date: 12.04.2017
  Time: 06:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>registrationSucessful</title>
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
            <a href="login.jsp">Formular</a>
        </li>
    </ul>
    </ul>
</div>
<div class="inhalt">
<p>Herzlich Willkomen bei der Bibliothek von ${sessionScope.userID.firstname},</p>
<p>Ihr UserID lautet: <b>${sessionScope.userID.userID}</b> </p>
<p>Sie können sich nun anmelden.</p>
<a href="login.jsp">zum Login</a>
</div>
</body>
</html>
