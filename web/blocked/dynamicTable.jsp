<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>DynamicTable</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/design.css" media="screen">
    <link rel="stylesheet" href="../css/print.css" media="print">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
</head>
<body class="body">
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
<H1>Colorful and Dynamic Table</H1>
 <FORM METHOD=POST ACTION=dynamicTable.jsp>
     <pre>
         Table Width  (<17) = <input TYPE="TEXT" NAME="WIDTH" placeholder="colums" required>
         Table Height (<17) = <input TYPE="TEXT" NAME="HEIGHT" placeholder="rows" required>
     </pre>
 <INPUT TYPE=SUBMIT VALUE="Submit">
 </FORM>
<HR>
<HR>
 <%  String w = request.getParameter("WIDTH");
     String h = request.getParameter("HEIGHT");
     if(w == null) w = "0";
     if(h == null) h = "0";
     int width  = Integer.parseInt(w);
     int height = Integer.parseInt(h);
     if(width>16)  width  = 16;
     if(width<0)   width  = 0;
     if(height>16) height = 16;
     if(height<0)  height = 0;
     String[] colorArray  = { "00", "11", "22", "33",
                              "44", "55", "66", "77",
                              "88", "99", "AA", "BB",
                              "CC", "DD", "EE", "FF"  };  %>
 <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0>
 <%  for(int y=0; y<=height; y++){    %>
         <TR>
 <%      for(int x=0; x<=width; x++){
            String bgColor = "AA" + (x+y) + (y+x);    %>
            <TD BGCOLOR=<%=bgColor%>>
           (<%=x%>, <%=y%>)
            </TD>
 <%}
 %>
         </TR>
 <%  }  %>
</TABLE>
 <HR>
</div>
</body>
</html>