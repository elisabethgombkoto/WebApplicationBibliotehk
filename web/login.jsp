<%--
  Created by IntelliJ IDEA.
  User: Elisabeth
  Date: 12.04.2017
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
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
            <i class="fa fa-pencil" aria-hidden="true"></i>
            <a href="login.jsp">Login</a>
        </li>
    </ul>
</div>
<div class="inhalt">

    <h1>Formular</h1>

    <form name="form" onsubmit="return validateForm()"  action="controller">

        <p>
            <label for="userID">UserID:</label>
            <input type="text" id="userID" name="userID">
        </p>
        <p>
            <label for="password" >Passwort:</label>
            <input type="password" id="password" name="password">
        </p>
        <p>
            <input type="submit" value="login">
            <input type="hidden" name="dispatchTo" value="login">
        </p>
    </form>
</div>
</body>
</html>
